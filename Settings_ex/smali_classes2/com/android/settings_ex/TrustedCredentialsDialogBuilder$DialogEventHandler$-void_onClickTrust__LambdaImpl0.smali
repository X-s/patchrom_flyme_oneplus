.class final synthetic Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$-void_onClickTrust__LambdaImpl0;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onClickTrust__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$-void_onClickTrust__LambdaImpl0;->val$this:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$-void_onClickTrust__LambdaImpl0;->val$this:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->-com_android_settings_TrustedCredentialsDialogBuilder$DialogEventHandler-mthref-0(I)V

    return-void
.end method
