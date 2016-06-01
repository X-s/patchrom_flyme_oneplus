.class public Lcom/oneplus/api/passport/request/RegisterRequest;
.super Lcom/oneplus/api/OneplusRequest;
.source "RegisterRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/api/OneplusRequest",
        "<",
        "Lcom/oneplus/api/passport/response/RegisterResponse;",
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

.method public static final newRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/api/OneplusRequest;
    .locals 2
    .param p0, "account"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "confPassword"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oneplus/api/OneplusRequest",
            "<",
            "Lcom/oneplus/api/passport/response/RegisterResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/oneplus/api/passport/request/RegisterRequest;

    sget-object v1, Lcom/oneplus/api/constants/RequestMethod;->POST:Lcom/oneplus/api/constants/RequestMethod;

    invoke-direct {v0, v1}, Lcom/oneplus/api/passport/request/RegisterRequest;-><init>(Lcom/oneplus/api/constants/RequestMethod;)V

    .line 45
    .local v0, "request":Lcom/oneplus/api/passport/request/RegisterRequest;
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/api/passport/request/RegisterRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/api/passport/request/RegisterRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "confPassword"

    invoke-virtual {v0, v1, p2}, Lcom/oneplus/api/passport/request/RegisterRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "code"

    invoke-virtual {v0, v1, p3}, Lcom/oneplus/api/passport/request/RegisterRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
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
            "Lcom/oneplus/api/passport/response/RegisterResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const-class v0, Lcom/oneplus/api/passport/response/RegisterResponse;

    return-object v0
.end method
