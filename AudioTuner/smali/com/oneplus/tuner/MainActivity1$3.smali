.class Lcom/oneplus/tuner/MainActivity1$3;
.super Ljava/lang/Object;
.source "MainActivity1.java"

# interfaces
.implements Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/MainActivity1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/MainActivity1;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/MainActivity1;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/oneplus/tuner/MainActivity1$3;->this$0:Lcom/oneplus/tuner/MainActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginFail()V
    .locals 2

    .prologue
    .line 127
    # getter for: Lcom/oneplus/tuner/MainActivity1;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/tuner/MainActivity1;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "login failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public onLoginSuccess()V
    .locals 2

    .prologue
    .line 121
    # getter for: Lcom/oneplus/tuner/MainActivity1;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/tuner/MainActivity1;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "login success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public onTokenTimeOut()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
