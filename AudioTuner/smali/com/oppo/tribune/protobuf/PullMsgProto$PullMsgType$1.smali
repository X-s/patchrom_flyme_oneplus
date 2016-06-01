.class final Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType$1;
.super Ljava/lang/Object;
.source "PullMsgProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
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
        "Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType$1;->findValueByNumber(I)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 64
    invoke-static {p1}, Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;->valueOf(I)Lcom/oppo/tribune/protobuf/PullMsgProto$PullMsgType;

    move-result-object v0

    return-object v0
.end method
