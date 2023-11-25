import requests
import os
from urllib.parse import urlparse

def download_and_save(url, save_path):
    response = requests.get(url)

    if response.status_code == 200:
        # Extract file name from the URL
        file_name = os.path.basename(urlparse(url).path)
        file_path = os.path.join(save_path, file_name)

        with open(file_path, 'wb') as file:
            file.write(response.content)

        print(f"File downloaded and saved to: {file_path}")
        return file_path
    else:
        print(f"Failed to download file from {url}")
        return None

# URLs to download from
urls = [
    "https://www.rush.edu/sites/default/files/media-documents/36-2174823_RushUniversityMedicalCenter_standardcharges.xlsx",
    "https://www.rush.edu/sites/default/files/media-documents/36-3193787_RushCopleyMedicalCenter_standardcharges.xlsx",
    "https://www.rush.edu/sites/default/files/media-documents/36-2183812_RushOakParkHospital_standardcharges.xlsx",
    "https://www.riverhospital.org/component/osdownloads/download/general/2022-shoppable-services-river-hospital-810600548-xlsx",
    "https://www.riverhospital.org/component/osdownloads/download/general/2023-price-transparency-xlsx",
    "https://www.mmchs.org/wp-content/uploads/2023/05/MeadvilleMedicalCenter-PriceTransparency-StandardCharges.xlsx",
    "https://www.albanymed.org/wp-content/uploads/attachements/141338307_AlbanyMedicalCenter_standardcharges.csv",
    "https://bsweh.org/wp-content/uploads/forms/26-2978009_Baylor-Scott-and-White-Emergency-Hospital_standardcharges.csv",
    "https://bsweh.org/wp-content/uploads/forms/36-4755936_Baylor-Scott-and-White-Emergency-Hospital_standardcharges.csv",
    "https://bsweh.org/pricing-transparency/26-2978009_Baylor-Scott-and-White-Emergency-Hospital_standardcharges.csv",
    "https://bsweh.org/wp-content/uploads/forms/36-4755936_Baylor-Scott-and-White-Emergency-Hospital_standardcharges.csv",
    "https://bsweh.org/wp-content/uploads/forms/26-2978009_Baylor-Scott-and-White-Emergency-Hospital_standardcharges.csv",
    "https://bsweh.org/wp-content/uploads/forms/36-4755936_Baylor-Scott-and-White-Emergency-Hospital_standardcharges.csv",
    "https://bsweh.org/wp-content/uploads/forms/26-2978009_Baylor-Scott-and-White-Emergency-Hospital_standardcharges.csv",
    "https://bsweh.org/wp-content/uploads/forms/26-2978009_Baylor-Scott-and-White-Emergency-Hospital_standardcharges.csv",
    "https://www.nuvancehealth.org/-/media/pdf-files/billing-and-insurance/price-transparency-and-cost-estimator/january-2023/06-0646597_danbury-hospital_standardcharges.xlsx"
    
]

# Directory to save downloaded files
save_directory = "/Users/joshua.adkins/Documents/Github/DataEngineering-CloudProficiency/PriceTransparency/DownloadedItems"

# Create the directory if it doesn't exist
os.makedirs(save_directory, exist_ok=True)

# Iterate through each URL and download the corresponding file
for i, url in enumerate(urls):
    download_and_save(url, save_directory)

print("All files downloaded and saved successfully.")
