.class Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity$1;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity$1;->this$0:Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity$1;->this$0:Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->onEnterAnimationComplete()V

    .line 113
    return-void
.end method
