class Sap
    def self.extract_text(image)
        res = HTTParty.post('https://sandbox.api.sap.com/mlfs/api/v2/image/ocr',
            multipart: true,
            body: { files: image },
            headers: {
                'Content-Type' => 'multipart/form-data',
                'APIKey' => '8m7tM6X7mPEnOhqzL9oFVZNtZGaC8hJH'
            })
        return res.body
    end
end