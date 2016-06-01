.class Lcom/oneplus/tuner/OnePlusUserAgreementActivity$2;
.super Landroid/webkit/WebViewClient;
.source "OnePlusUserAgreementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusUserAgreementActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusUserAgreementActivity;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusUserAgreementActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusUserAgreementActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusUserAgreementActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusUserAgreementActivity;

    invoke-virtual {v1, v0}, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;->startActivity(Landroid/content/Intent;)V

    .line 32
    const/4 v1, 0x1

    return v1
.end method
