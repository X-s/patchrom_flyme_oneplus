.class public Lcom/oneplus/api/passport/request/VerifyValidRequest;
.super Lcom/oneplus/api/OneplusRequest;
.source "VerifyValidRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/api/OneplusRequest",
        "<",
        "Lcom/oneplus/api/passport/response/VerifyValidResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4c1bc0d45c43298L


# instance fields
.field private account:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/oneplus/api/constants/RequestMethod;)V
    .locals 0
    .param p1, "method"    # Lcom/oneplus/api/constants/RequestMethod;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/api/OneplusRequest;-><init>(Lcom/oneplus/api/constants/RequestMethod;)V

    .line 38
    return-void
.end method

.method public static final newRequest(Ljava/lang/String;)Lcom/oneplus/api/OneplusRequest;
    .locals 2
    .param p0, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/oneplus/api/OneplusRequest",
            "<",
            "Lcom/oneplus/api/passport/response/VerifyValidResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/oneplus/api/passport/request/VerifyValidRequest;

    sget-object v1, Lcom/oneplus/api/constants/RequestMethod;->GET:Lcom/oneplus/api/constants/RequestMethod;

    invoke-direct {v0, v1}, Lcom/oneplus/api/passport/request/VerifyValidRequest;-><init>(Lcom/oneplus/api/constants/RequestMethod;)V

    .line 48
    .local v0, "request":Lcom/oneplus/api/passport/request/VerifyValidRequest;
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/api/passport/request/VerifyValidRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-object p0, v0, Lcom/oneplus/api/passport/request/VerifyValidRequest;->account:Ljava/lang/String;

    .line 50
    return-object v0
.end method


# virtual methods
.method protected checkRequest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/api/exception/ApiException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oneplus/api/passport/request/VerifyValidRequest;->account:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/oneplus/api/passport/request/VerifyValidRequest;->account:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lcom/oneplus/api/exception/ApiException;

    sget-object v1, Lcom/oneplus/api/constants/MessageCodes;->ACCOUNT_NULL:Lcom/oneplus/api/constants/MessageCodes;

    invoke-direct {v0, v1}, Lcom/oneplus/api/exception/ApiException;-><init>(Lcom/oneplus/api/constants/MessageCodes;)V

    throw v0

    .line 61
    :cond_1
    return-void
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/oneplus/api/passport/response/VerifyValidResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const-class v0, Lcom/oneplus/api/passport/response/VerifyValidResponse;

    return-object v0
.end method
