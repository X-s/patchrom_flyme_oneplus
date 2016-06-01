.class public Lcom/oppo/tribune/provider/forum/dao/RecordAndId;
.super Ljava/lang/Object;
.source "RecordAndId.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mRecord:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mRecordId:J


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 1
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/RecordAndId;, "Lcom/oppo/tribune/provider/forum/dao/RecordAndId<TT;>;"
    .local p3, "record":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/oppo/tribune/provider/forum/dao/RecordAndId;->mRecordId:J

    .line 25
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/RecordAndId;->mRecord:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public final getRecord()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/RecordAndId;, "Lcom/oppo/tribune/provider/forum/dao/RecordAndId<TT;>;"
    iget-object v0, p0, Lcom/oppo/tribune/provider/forum/dao/RecordAndId;->mRecord:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRecordId()J
    .locals 2

    .prologue
    .line 29
    .local p0, "this":Lcom/oppo/tribune/provider/forum/dao/RecordAndId;, "Lcom/oppo/tribune/provider/forum/dao/RecordAndId<TT;>;"
    iget-wide v0, p0, Lcom/oppo/tribune/provider/forum/dao/RecordAndId;->mRecordId:J

    return-wide v0
.end method
