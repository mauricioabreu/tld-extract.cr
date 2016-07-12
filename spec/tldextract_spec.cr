require "./spec_helper"

describe TLDExtract do
  subject { TLDExtract::TLDExtract.new }

  describe "#extract" do
    context "when it parses https://www.github.com" do
      let(url) { "https://www.github.com" }

      it "extracts the subdomain" do
        expect(subject.extract(url).subdomain).to eq("www")
      end

      it "extracts the domain" do
        expect(subject.extract(url).domain).to eq("github")
      end

      it "extracts the suffix" do
        expect(subject.extract(url).suffix).to eq("com")
      end
    end
  end
end
