package com.medicine.app;

import com.google.cloud.vision.v1.ImageAnnotatorClient;
import com.google.cloud.vision.v1.AnnotateImageRequest;
import com.google.cloud.vision.v1.AnnotateImageResponse;
import com.google.cloud.vision.v1.BatchAnnotateImagesResponse;
import com.google.cloud.vision.v1.Feature;
import com.google.cloud.vision.v1.Feature.Type;
import com.google.cloud.vision.v1.Image;
import com.google.protobuf.ByteString;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class GoogleVisionOnlyText {

	public String onlyText(MultipartFile vo) throws IOException {

		try {
			byte[] byteArr = vo.getBytes();

			InputStream inputStream = new ByteArrayInputStream(byteArr);
			ByteString imgBytes = ByteString.readFrom(inputStream);

//			
			List<AnnotateImageRequest> requests = new ArrayList<>();
//		
			Image img = Image.newBuilder().setContent(imgBytes).build();
			Feature featText = Feature.newBuilder().setType(Type.TEXT_DETECTION).build();
			Feature featColor = Feature.newBuilder().setType(Feature.Type.IMAGE_PROPERTIES).build();
			AnnotateImageRequest requestText = AnnotateImageRequest.newBuilder().addFeatures(featText).setImage(img).build();
			AnnotateImageRequest requestColor = AnnotateImageRequest.newBuilder().addFeatures(featColor).setImage(img).build();
			requests.add(requestText);
			requests.add(requestColor);
			try (ImageAnnotatorClient client = ImageAnnotatorClient.create()) {
				BatchAnnotateImagesResponse response = client.batchAnnotateImages(requests);
				List<AnnotateImageResponse> responses = response.getResponsesList();

				for (AnnotateImageResponse res : responses) {
					if (res.hasError()) {
						System.out.println("Error: " + res.getError().getMessage());
						String text = "Error: " + res.getError().getMessage();
						return text;
					}

					String text=res.getTextAnnotationsList().get(0).getDescription();
					// For full list of available annotations, see http://g.co/cloud/vision/docs
					/*
					 * for (EntityAnnotation annotation : res.getTextAnnotationsList()) {
					 * 
					 * //System.out.printf("Text: %s\n", annotation.getDescription());
					 * //System.out.printf("Position : %s\n", annotation.getBoundingPoly()); }
					 */
					return text;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
