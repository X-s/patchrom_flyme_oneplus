.class public abstract Lcom/oppo/tribune/square/parse/BasePostResult;
.super Ljava/lang/Object;
.source "BasePostResult.java"

# interfaces
.implements Lcom/oppo/tribune/util/WriteDatabase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oppo/tribune/util/WriteDatabase;"
    }
.end annotation


# instance fields
.field protected final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mPage:I


# direct methods
.method protected constructor <init>(ILjava/util/List;)V
    .locals 2
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/oppo/tribune/square/parse/BasePostResult;, "Lcom/oppo/tribune/square/parse/BasePostResult<TT;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/square/parse/BasePostResult;->mList:Ljava/util/List;

    .line 28
    iput p1, p0, Lcom/oppo/tribune/square/parse/BasePostResult;->mPage:I

    .line 29
    iget-object v1, p0, Lcom/oppo/tribune/square/parse/BasePostResult;->mList:Ljava/util/List;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    return-void
.end method


# virtual methods
.method public final getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/oppo/tribune/square/parse/BasePostResult;, "Lcom/oppo/tribune/square/parse/BasePostResult<TT;>;"
    iget-object v0, p0, Lcom/oppo/tribune/square/parse/BasePostResult;->mList:Ljava/util/List;

    return-object v0
.end method

.method public final getPage()I
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/oppo/tribune/square/parse/BasePostResult;, "Lcom/oppo/tribune/square/parse/BasePostResult<TT;>;"
    iget v0, p0, Lcom/oppo/tribune/square/parse/BasePostResult;->mPage:I

    return v0
.end method
