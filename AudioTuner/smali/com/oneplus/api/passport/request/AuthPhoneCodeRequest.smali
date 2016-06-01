.class public Lcom/oneplus/api/passport/request/AuthPhoneCodeRequest;
.super Lcom/oneplus/api/OneplusRequest;
.source "AuthPhoneCodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/api/OneplusRequest",
        "<",
        "Lcom/oneplus/api/passport/response/AuthPhoneCodeResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2bad08f424d8b7baL


# direct methods
.method private constructor <init>(Lcom/oneplus/api/constants/RequestMethod;)V
    .locals 0
    .param p1, "method"    # Lcom/oneplus/api/constants/RequestMethod;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/api/OneplusRequest;-><init>(Lcom/oneplus/api/constants/RequestMethod;)V

    .line 32
    return-void
.end method

.method public static final newRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/api/OneplusRequest;
    .locals 2
    .param p0, "phoneNum"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oneplus/api/OneplusRequest",
            "<",
            "Lcom/oneplus/api/passport/response/AuthPhoneCodeResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/oneplus/api/passport/request/AuthPhoneCodeRequest;

    sget-object v1, Lcom/oneplus/api/constants/RequestMethod;->POST:Lcom/oneplus/api/constants/RequestMethod;

    invoke-direct {v0, v1}, Lcom/oneplus/api/passport/request/AuthPhoneCodeRequest;-><init>(Lcom/oneplus/api/constants/RequestMethod;)V

    .line 43
    .local v0, "request":Lcom/oneplus/api/passport/request/AuthPhoneCodeRequest;
    const-string v1, "phoneNum"

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/api/passport/request/AuthPhoneCodeRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/api/passport/request/AuthPhoneCodeRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-object v0
.end method


# virtual methods
.method protected checkRequest()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/api/exception/ApiException;
        }
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/oneplus/api/passport/response/AuthPhoneCodeResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const-class v0, Lcom/oneplus/api/passport/response/AuthPhoneCodeResponse;

    return-object v0
.end method
