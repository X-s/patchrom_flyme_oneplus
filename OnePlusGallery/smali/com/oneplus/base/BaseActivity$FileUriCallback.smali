.class final Lcom/oneplus/base/BaseActivity$FileUriCallback;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FileUriCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/base/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/oneplus/base/BaseActivity;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/oneplus/base/BaseActivity$FileUriCallback;->this$0:Lcom/oneplus/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/base/BaseActivity;Lcom/oneplus/base/BaseActivity$FileUriCallback;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/oneplus/base/BaseActivity$FileUriCallback;-><init>(Lcom/oneplus/base/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 2
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/oneplus/base/BaseActivity$FileUriCallback;->this$0:Lcom/oneplus/base/BaseActivity;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity;->getBeamUris()[Landroid/net/Uri;

    move-result-object v0

    .line 234
    .local v0, "uris":[Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 235
    const/4 v1, 0x0

    new-array v0, v1, [Landroid/net/Uri;

    .line 236
    :cond_0
    return-object v0
.end method
