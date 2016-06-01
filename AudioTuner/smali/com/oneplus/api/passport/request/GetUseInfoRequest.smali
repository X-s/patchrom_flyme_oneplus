.class public Lcom/oneplus/api/passport/request/GetUseInfoRequest;
.super Lcom/oneplus/api/OneplusRequest;
.source "GetUseInfoRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/api/OneplusRequest",
        "<",
        "Lcom/oneplus/api/passport/response/GetUserInfoResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x250ce904b6f65ed0L


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

.method public static final newRequest()Lcom/oneplus/api/OneplusRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/api/OneplusRequest",
            "<",
            "Lcom/oneplus/api/passport/response/GetUserInfoResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/oneplus/api/passport/request/GetUseInfoRequest;

    sget-object v1, Lcom/oneplus/api/constants/RequestMethod;->GET:Lcom/oneplus/api/constants/RequestMethod;

    invoke-direct {v0, v1}, Lcom/oneplus/api/passport/request/GetUseInfoRequest;-><init>(Lcom/oneplus/api/constants/RequestMethod;)V

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
    .line 50
    return-void
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/oneplus/api/passport/response/GetUserInfoResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const-class v0, Lcom/oneplus/api/passport/response/GetUserInfoResponse;

    return-object v0
.end method
