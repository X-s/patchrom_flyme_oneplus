.class public Lcom/oneplus/api/passport/request/LoginRequest;
.super Lcom/oneplus/api/OneplusRequest;
.source "LoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/api/OneplusRequest",
        "<",
        "Lcom/oneplus/api/passport/response/LoginResponse;",
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

.method public static final newRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/api/OneplusRequest;
    .locals 3
    .param p0, "account"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oneplus/api/OneplusRequest",
            "<",
            "Lcom/oneplus/api/passport/response/LoginResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/oneplus/api/passport/request/LoginRequest;

    sget-object v1, Lcom/oneplus/api/constants/RequestMethod;->POST:Lcom/oneplus/api/constants/RequestMethod;

    invoke-direct {v0, v1}, Lcom/oneplus/api/passport/request/LoginRequest;-><init>(Lcom/oneplus/api/constants/RequestMethod;)V

    .line 43
    .local v0, "request":Lcom/oneplus/api/passport/request/LoginRequest;
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/api/passport/request/LoginRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/api/passport/request/LoginRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "source"

    const-string v2, "11"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/api/passport/request/LoginRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "flag"

    invoke-virtual {v0, v1, p2}, Lcom/oneplus/api/passport/request/LoginRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 56
    return-void
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/oneplus/api/passport/response/LoginResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const-class v0, Lcom/oneplus/api/passport/response/LoginResponse;

    return-object v0
.end method
