.class final Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType$1;
.super Ljava/lang/Object;
.source "ResStatNetProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType$1;->findValueByNumber(I)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 50
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;->valueOf(I)Lcom/oppo/tribune/protobuf/ResStatNetProto$ProductType;

    move-result-object v0

    return-object v0
.end method
