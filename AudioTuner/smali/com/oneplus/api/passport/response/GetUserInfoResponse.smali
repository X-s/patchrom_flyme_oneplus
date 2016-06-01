.class public Lcom/oneplus/api/passport/response/GetUserInfoResponse;
.super Lcom/oneplus/api/OneplusResponse;
.source "GetUserInfoResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x365cf5f09a285e50L


# instance fields
.field private user:Lcom/oneplus/api/domain/User;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/oneplus/api/constants/ResponseDataType;->JSON:Lcom/oneplus/api/constants/ResponseDataType;

    invoke-direct {p0, v0}, Lcom/oneplus/api/OneplusResponse;-><init>(Lcom/oneplus/api/constants/ResponseDataType;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getUser()Lcom/oneplus/api/domain/User;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oneplus/api/passport/response/GetUserInfoResponse;->user:Lcom/oneplus/api/domain/User;

    return-object v0
.end method

.method public setUser(Lcom/oneplus/api/domain/User;)V
    .locals 0
    .param p1, "user"    # Lcom/oneplus/api/domain/User;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oneplus/api/passport/response/GetUserInfoResponse;->user:Lcom/oneplus/api/domain/User;

    .line 37
    return-void
.end method
