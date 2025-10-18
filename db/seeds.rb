# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clean my database
puts "Cleaning database..."

StaticResponseReference.destroy_all
StaticResponse.destroy_all
StaticQuery.destroy_all

# Populate my tables with known values

# Series 1

static_query_1 = StaticQuery.new()
static_query_1.txt_query = "Can I transfer a loan to another borrower within the Recovery Loan Scheme (RLS)?"
static_query_1.save

if static_query_1
  puts("A new StaticQuery has been added to the static_queries table successfully")
else
  puts("Houston, we have a problem...")
end


static_response_1 = StaticResponse.new()
static_response_1.txt_scheme = "RLS (Recovery Loan Scheme)"
static_response_1.txt_relevant_doc = "BBB_RLS_Guarantees_Portal_2022.pdf"
static_response_1.txt_relevant_doc_section_details = "Section 12.0"
static_response_1.txt_bp_1 = "You cannot directly transfer an existing loan from one borrower to another under the same facility."
static_response_1.txt_bp_2 = "If a borrower wants to move or refinance the facility, the new borrower must apply as a new facility, go through the eligibility check again, and the lender must complete a new application process."
static_response_1.txt_bp_3 = "The original facility must then be repaid once the new one is drawn down."
static_response_1.txt_bp_4 = "Certain sectors are excluded (e.g. insurance, public-sector bodies, and state-funded schools)."
static_response_1.static_query_id = static_query_1.id
static_response_1.save

if static_response_1
  puts ("A new StaticResponse has been added to the static_responses table successfully")
else
  puts("Atlanta, we have a problem...")
end

static_response_reference_1 = StaticResponseReference.new()
static_response_reference_1.txt_title_details = "BBB_RLS_Guarantees_Portal_2022.pdf"
static_response_reference_1.txt_section_details = "Section 12.0"
static_response_reference_1.txt_section_content = "An RLS facility cannot be transferred or reassigned between Lenders…"
static_response_reference_1.static_response_id = static_response_1.id
static_response_reference_1.save

if static_response_reference_1
  puts ("A new StaticResponseReference has been added to the static_response_references table successfully")
else
  puts ("Vegas, we have a problem...")
end

static_response_reference_2 = StaticResponseReference.new()
static_response_reference_2.txt_title_details = "BBLS_Term_Loan_Guarantees_Portal_Manual_v4.pdf"
static_response_reference_2.txt_section_details = "Section 13.0"
static_response_reference_2.txt_section_content = "There is no transfer functionality within the portal for BBLS facilities…"
static_response_reference_2.static_response_id = static_response_1.id
static_response_reference_2.save

if static_response_reference_2
  puts ("A new StaticResponseReference has been added to the static_response_references table successfully")
else
  puts ("Memphis, we have a problem...")
end

static_response_reference_3 = StaticResponseReference.new()
static_response_reference_3.txt_title_details = "CBIL_Invoice_Finance_Manual_v4.pdf"
static_response_reference_3.txt_section_details = "Section 11.5"
static_response_reference_3.txt_section_content = "This function should only be used to correct data input errors…"
static_response_reference_3.static_response_id = static_response_1.id
static_response_reference_3.save

if static_response_reference_3
  puts ("A new StaticResponseReference has been added to the static_response_references table successfully")
else
  puts ("Dallas, we have a problem...")
end


# Series 2

static_query_2 = StaticQuery.new()
static_query_2.txt_query = "Can a borrower contract multiple loans under the BBLS (BBLS)?"
static_query_2.save

if static_query_2
  puts("A new StaticQuery has been added to the static_queries table successfully")
else
  puts("Houston, we have a problem...")
end


static_response_2 = StaticResponse.new()
static_response_2.txt_scheme = "BBLS (Bounce Back Loan Scheme)"
static_response_2.txt_relevant_doc = "BBLS_Term_Loan_Guarantees_Portal_Manual_v4.pdf"
static_response_2.txt_relevant_doc_section_details = "Section 12.0"
static_response_2.txt_bp_1 = "A borrower cannot contract multiple loans under the scheme."
static_response_2.txt_bp_2 = "The scheme design, portal functionality, and eligibility checks all enforce one BBLS facility per borrower."
static_response_2.txt_bp_3 = "Any additional financing would need to come from a different scheme (e.g. CBILS or RLS) and pass a new eligibility assessment."
static_response_2.txt_bp_4 = "Certain sectors are excluded (e.g. insurance, public-sector bodies, and state-funded schools)."
static_response_2.static_query_id = static_query_2.id
static_response_2.save

if static_response_2
  puts ("A new StaticResponse has been added to the static_responses table successfully")
else
  puts("Atlanta, we have a problem...")
end

static_response_reference_1 = StaticResponseReference.new()
static_response_reference_1.txt_title_details = "BBLS_Term_Loan_Guarantees_Portal_Manual_v4.pdf"
static_response_reference_1.txt_section_details = "Section 7.1"
static_response_reference_1.txt_section_content = "The borrower must not have already received a loan under the Bounce Back Loan Scheme…"
static_response_reference_1.static_response_id = static_response_2.id
static_response_reference_1.save

if static_response_reference_1
  puts ("A new StaticResponseReference has been added to the static_response_references table successfully")
else
  puts ("Vegas, we have a problem...")
end

static_response_reference_2 = StaticResponseReference.new()
static_response_reference_2.txt_title_details = "BBB_RLS_Guarantees_Portal_2022.pdf"
static_response_reference_2.txt_section_details = "Section 1.0"
static_response_reference_2.txt_section_content = "RLS is designed to be a flexible guarantee Scheme which can be used to support Term Loans…"
static_response_reference_2.static_response_id = static_response_2.id
static_response_reference_2.save

if static_response_reference_2
  puts ("A new StaticResponseReference has been added to the static_response_references table successfully")
else
  puts ("Memphis, we have a problem...")
end

static_response_reference_3 = StaticResponseReference.new()
static_response_reference_3.txt_title_details = "CBIL_Invoice_Finance_Manual_v4.pdf"
static_response_reference_3.txt_section_details = "Section 1.0"
static_response_reference_3.txt_section_content = "CBILS is designed to be a flexible guarantee Scheme which can be used alongside…"
static_response_reference_3.static_response_id = static_response_2.id
static_response_reference_3.save

if static_response_reference_3
  puts ("A new StaticResponseReference has been added to the static_response_references table successfully")
else
  puts ("Dallas, we have a problem...")
end


# Series 3

static_query_3 = StaticQuery.new()
static_query_3.txt_query = "What are the constraints of scheme eligibility?"
static_query_3.save

if static_query_3
  puts("A new StaticQuery has been added to the static_queries table successfully")
else
  puts("Houston, we have a problem...")
end


static_response_3 = StaticResponse.new()
static_response_3.txt_scheme = "CBILS (Coronavirus Business Interruption Loan Scheme)"
static_response_3.txt_relevant_doc = "CBILS_Eligibility_Guidelines.pdf"
static_response_3.txt_relevant_doc_section_details = "Section 3.2"
static_response_3.txt_bp_1 = "Businesses must be be UK-based with an annual turnover of < £45m"
static_response_3.txt_bp_2 = "Must demonstrate a viable business plan before COVID-19 disruption"
static_response_3.txt_bp_3 = "Cannot already be in insolvency proceedings at the time of application"
static_response_3.txt_bp_4 = "Certain sectors are excluded (e.g. insurance, public-sector bodies, and state-funded schools)."
static_response_3.static_query_id = static_query_3.id
static_response_3.save

if static_response_3
  puts ("A new StaticResponse has been added to the static_responses table successfully")
else
  puts("Atlanta, we have a problem...")
end

static_response_reference_1 = StaticResponseReference.new()
static_response_reference_1.txt_title_details = "CBILS_Eligibility_Guidelines.pdf"
static_response_reference_1.txt_section_details = "Section 3.2"
static_response_reference_1.txt_section_content = "To qualify for support under the CBILS scheme, applicants…"
static_response_reference_1.static_response_id = static_response_3.id
static_response_reference_1.save

if static_response_reference_1
  puts ("A new StaticResponseReference has been added to the static_response_references table successfully")
else
  puts ("Vegas, we have a problem...")
end

static_response_reference_2 = StaticResponseReference.new()
static_response_reference_2.txt_title_details = "BBLS_Scheme_Rules.pdf"
static_response_reference_2.txt_section_details = "Section 4.1"
static_response_reference_2.txt_section_content = "A single borrower may not hold more than one active…"
static_response_reference_2.static_response_id = static_response_3.id
static_response_reference_2.save

if static_response_reference_2
  puts ("A new StaticResponseReference has been added to the static_response_references table successfully")
else
  puts ("Memphis, we have a problem...")
end

static_response_reference_3 = StaticResponseReference.new()
static_response_reference_3.txt_title_details = "Guarantees_Portal_User_Guide.pdf"
static_response_reference_3.txt_section_details = "Section 7.3"
static_response_reference_3.txt_section_content = "All Direct Guarantees claims must be uploaded via the…"
static_response_reference_3.static_response_id = static_response_3.id
static_response_reference_3.save

if static_response_reference_3
  puts ("A new StaticResponseReference has been added to the static_response_references table successfully")
else
  puts ("Dallas, we have a problem...")
end
