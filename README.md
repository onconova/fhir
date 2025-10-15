# Onconova FHIR Implementation Guide (IG)

This repository contains the Onconova FHIR Implementation Guide (IG), which defines FHIR profiles, extensions, and implementation guidance for Onconova's clinical and research data exchange. The IG is built using HL7 FHIR tools and follows FHIR community best practices.

## Overview

The Onconova FHIR IG provides:
- FHIR profiles and extensions for Onconova use cases
- Example resources and implementation notes
- Guidance for implementers and integrators

## Prerequisites

Before you begin, ensure you have the following installed:
- [Node.js](https://nodejs.org/) (v14 or higher recommended)
- [npm](https://www.npmjs.com/)
- [Java JRE](https://www.java.com/) (required for IG Publisher)
- [Git](https://git-scm.com/)

## Installation

1. Clone this repository:
	```shell
	git clone https://github.com/onconova/onconova-fhir-ig.git
	cd onconova-fhir-ig
	```
2. Install FHIR SUSHI and IG Publisher:
	```shell
	npm install -g fsh-sushi
	./fhir/ig/_updatePublisher.sh
	```

## Build IG

To build the Implementation Guide, run:

```shell
./_genonce.sh
```

## Usage

- Edit FSH files in the `input/` directory to define profiles, extensions, and examples.
- Run SUSHI to convert FSH to FHIR JSON:
  ```shell
  sushi
  ```
- Use the IG Publisher to build and validate the IG as shown above.

## Contributing

Contributions are welcome! To contribute:
1. Fork the repository
2. Create a new branch for your feature or fix
3. Make your changes and commit them
4. Open a pull request describing your changes

Please follow FHIR and Onconova coding guidelines.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.