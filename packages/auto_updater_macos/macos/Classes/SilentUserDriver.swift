import Sparkle

final class SilentUserDriver: NSObject, SPUUserDriver {

    func showInstallingUpdate(
        withApplicationTerminated applicationTerminated: Bool,
        retryTerminatingApplication: @escaping () -> Void
    ) {
    }

    func showDownloadDidReceiveExpectedContentLength(_ expectedContentLength: UInt64) {
    }

    func showDownloadDidReceiveData(ofLength length: UInt64) {
    }

    func showDownloadDidStartExtractingUpdate() {
    }

    func showReadyToInstallAndRelaunch() async -> SPUUserUpdateChoice {
        return .install
    }

    func showUpdaterError(
        _ error: any Error,
        acknowledgement: @escaping () -> Void
    ) {
    }

    func showUserInitiatedUpdateCheck(
        cancellation: @escaping () -> Void
    ) {
    }

    func showUpdateFound(
        with appcastItem: SUAppcastItem,
        state: SPUUserUpdateState
    ) async -> SPUUserUpdateChoice {
        return .install
    }

    func showUpdateReleaseNotes(with downloadData: SPUDownloadData) {
    }

    func showUpdateReleaseNotesFailedToDownloadWithError(_ error: any Error) {
    }

    func showUpdateNotFoundWithError(
        _ error: any Error,
        acknowledgement: @escaping () -> Void
    ) {
    }

    func showDownloadInitiated(
        cancellation: @escaping () -> Void
    ) {
    }

    func showExtractionReceivedProgress(_ progress: Double) {
    }

    func showInstallingUpdate(
        withApplicationTerminated applicationTerminated: Bool
    ) {
    }

    func showUpdateInstalledAndRelaunched(
        _ relaunched: Bool,
        acknowledgement: @escaping () -> Void
    ) {
    }

    func showUpdateInFocus() {
    }

    func dismissUpdateInstallation() {
    }

    func show(
        _ request: SPUUpdatePermissionRequest
    ) async -> SUUpdatePermissionResponse {
        return SUUpdatePermissionResponse(
            automaticUpdateChecks: true,
            sendSystemProfile: true
        )
    }

    func showCanCheck(forUpdates: Bool) async {
    }

    func showUpdateFound(
        with appcastItem: SUAppcastItem,
        userInitiated: Bool
    ) async -> SPUUserUpdateChoice {
        return .install
    }

    func showUpdateReleaseNotes(
        _ releaseNotes: Data,
        mimeType: String
    ) async {
    }

    func showDownloadInitiated(
        withUpdateTitle title: String,
        cancellable: Bool
    ) async {
    }

    func showDownloadDidReceiveExpectedContentLength(
        _ expectedContentLength: UInt64
    ) async {
    }

    func showDownloadDidReceiveData(
        ofLength length: UInt64
    ) async {
    }

    func showDownloadDidStartExtractingUpdate() async {
    }

    func showDownloadDidFinishExtractingUpdate() async {
    }

    func showReady(
        toInstallAndRelaunch displayName: String
    ) async -> SPUUserUpdateChoice {
        .install
    }

    func showSendingTerminationSignal() {
        NSApp.activate(ignoringOtherApps: true)
    }

    func showUpdateInstallationDidFinish() async {
    }

    func showUpdateNotFound(
        acknowledgement: @escaping () -> Void
    ) {
        acknowledgement()
    }

    func showUpdaterError(
        _ error: Error,
        acknowledgement: @escaping () -> Void
    ) async {
        acknowledgement()
    }

    func showDownloadDidFailWithError(
        _ error: Error,
        acknowledgement: @escaping () -> Void
    ) async {
        acknowledgement()
    }

    func showExtractionDidFail(
        withError error: Error,
        acknowledgement: @escaping () -> Void
    ) async {
        acknowledgement()
    }

    func showInstallationDidFail(
        withError error: Error,
        acknowledgement: @escaping () -> Void
    ) async {
        acknowledgement()
    }

    func showResumableUpdateFound(
        item: SUAppcastItem,
        acknowledgement: @escaping (SPUUserUpdateChoice) -> Void
    ) async {
        acknowledgement(.install)
    }
}
