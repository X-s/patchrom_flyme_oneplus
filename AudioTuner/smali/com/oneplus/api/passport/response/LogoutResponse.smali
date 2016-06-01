.class public Lcom/oneplus/api/passport/response/LogoutResponse;
.super Lcom/oneplus/api/OneplusResponse;
.source "LogoutResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x1233b62d5a8e9092L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/oneplus/api/constants/ResponseDataType;->JSON:Lcom/oneplus/api/constants/ResponseDataType;

    invoke-direct {p0, v0}, Lcom/oneplus/api/OneplusResponse;-><init>(Lcom/oneplus/api/constants/ResponseDataType;)V

    .line 24
    return-void
.end method
