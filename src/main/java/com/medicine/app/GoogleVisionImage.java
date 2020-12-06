package com.medicine.app;

import com.google.cloud.vision.v1.AnnotateImageRequest;
import com.google.cloud.vision.v1.AnnotateImageResponse;
import com.google.cloud.vision.v1.BatchAnnotateImagesResponse;
import com.google.cloud.vision.v1.ColorInfo;
import com.google.cloud.vision.v1.DominantColorsAnnotation;
import com.google.cloud.vision.v1.Feature;
import com.google.cloud.vision.v1.Image;
import com.google.cloud.vision.v1.ImageAnnotatorClient;
import com.google.protobuf.ByteString;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class GoogleVisionImage {
	public List<String> ImageSearch(MultipartFile vo) throws IOException {
		List<String> ImageText = new ArrayList<String>();
		byte[] byteArr = vo.getBytes();
		List<AnnotateImageRequest> requests = new ArrayList<>();
		InputStream inputStream = new ByteArrayInputStream(byteArr);
		ByteString imgBytes = ByteString.readFrom(inputStream);

		Image img = Image.newBuilder().setContent(imgBytes).build();
		Feature feat = Feature.newBuilder().setType(Feature.Type.IMAGE_PROPERTIES).build();
		AnnotateImageRequest request = AnnotateImageRequest.newBuilder().addFeatures(feat).setImage(img).build();
		requests.add(request);

		try (ImageAnnotatorClient client = ImageAnnotatorClient.create()) {
			BatchAnnotateImagesResponse response = client.batchAnnotateImages(requests);
			List<AnnotateImageResponse> responses = response.getResponsesList();

			for (AnnotateImageResponse res : responses) {
				if (res.hasError()) {
					System.out.println("Error: " + res.getError().getMessage());
					String text = "Error: " + res.getError().getMessage();
					ImageText.add(text);
					return ImageText;
				}

				DominantColorsAnnotation colors = res.getImagePropertiesAnnotation().getDominantColors();
				for (ColorInfo color : colors.getColorsList()) {

					ImageText.add(color.getPixelFraction() + ":" + color.getColor().getRed() + ":"
							+ color.getColor().getGreen() + ":" + color.getColor().getBlue());
				}
			}
		}
		return ImageText;
	}
}