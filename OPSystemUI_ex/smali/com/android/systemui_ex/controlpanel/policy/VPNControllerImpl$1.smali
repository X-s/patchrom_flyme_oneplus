.class Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "VPNControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl$1;->this$0:Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl$1;->this$0:Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;

    # getter for: Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->access$000(Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 81
    .local v0, "networkCapabilities":Landroid/net/NetworkCapabilities;
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl$1;->this$0:Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;

    iget v2, p1, Landroid/net/Network;->netId:I

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->setCurrentNetid(I)V
    invoke-static {v1, v2}, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->access$100(Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;I)V

    .line 84
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl$1;->this$0:Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;

    # getter for: Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->mCurrentVpnNetworkId:I
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->access$200(Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;)I

    move-result v0

    iget v1, p1, Landroid/net/Network;->netId:I

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl$1;->this$0:Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;

    const/4 v1, -0x1

    # invokes: Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->setCurrentNetid(I)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;->access$100(Lcom/android/systemui_ex/controlpanel/policy/VPNControllerImpl;I)V

    .line 91
    :cond_0
    return-void
.end method
