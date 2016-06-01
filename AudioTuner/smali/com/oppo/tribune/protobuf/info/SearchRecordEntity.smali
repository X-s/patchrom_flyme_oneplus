.class public Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;
.super Ljava/lang/Object;
.source "SearchRecordEntity.java"


# static fields
.field public static final SEARCH_TYPE_FRIEND:I = 0x3eb

.field public static final SEARCH_TYPE_RESOURCE:I = 0x3ea

.field public static final SEARCH_TYPE_SQUARE:I = 0x3e9


# instance fields
.field private key:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;->type:I

    .line 29
    iput-object p2, p0, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;->key:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;->type:I

    return v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;->key:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/SearchRecordEntity;->type:I

    .line 38
    return-void
.end method
