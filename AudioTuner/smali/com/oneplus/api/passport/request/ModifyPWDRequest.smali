.class public Lcom/oneplus/api/passport/request/ModifyPWDRequest;
.super Lcom/oneplus/api/OneplusRequest;
.source "ModifyPWDRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/api/OneplusRequest",
        "<",
        "Lcom/oneplus/api/passport/response/ModifyPWDResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x496f37e10f6a01b7L


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

.method public static final newRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/api/OneplusRequest;
    .locals 2
    .param p0, "oldPWD"    # Ljava/lang/String;
    .param p1, "newPWD"    # Ljava/lang/String;
    .param p2, "confNewPWD"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oneplus/api/OneplusRequest",
            "<",
            "Lcom/oneplus/api/passport/response/ModifyPWDResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/oneplus/api/passport/request/ModifyPWDRequest;

    sget-object v1, Lcom/oneplus/api/constants/RequestMethod;->POST:Lcom/oneplus/api/constants/RequestMethod;

    invoke-direct {v0, v1}, Lcom/oneplus/api/passport/request/ModifyPWDRequest;-><init>(Lcom/oneplus/api/constants/RequestMethod;)V

    .line 44
    .local v0, "request":Lcom/oneplus/api/passport/request/ModifyPWDRequest;
    const-string v1, "oldPWD"

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/api/passport/request/ModifyPWDRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "newPWD"

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/api/passport/request/ModifyPWDRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "confNewPWD"

    invoke-virtual {v0, v1, p2}, Lcom/oneplus/api/passport/request/ModifyPWDRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
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
    .line 58
    return-void
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/oneplus/api/passport/response/ModifyPWDResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const-class v0, Lcom/oneplus/api/passport/response/ModifyPWDResponse;

    return-object v0
.end method
