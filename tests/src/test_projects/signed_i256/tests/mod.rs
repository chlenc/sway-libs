use fuels::prelude::*;

script_abigen!(
    Testi256,
    "test_projects/signed_i256/out/debug/i256_test-abi.json"
);

mod success {

    use super::*;

    #[tokio::test]
    async fn runs_i256_test_script() {
        let path_to_bin = "test_projects/signed_i256/out/debug/i256_test.bin";
        let wallet = launch_provider_and_get_wallet().await;

        let instance = Testi256::new(wallet, path_to_bin);

        let _result = instance.main().call().await;
    }
}
