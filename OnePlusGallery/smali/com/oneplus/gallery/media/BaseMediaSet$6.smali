.class Lcom/oneplus/gallery/media/BaseMediaSet$6;
.super Ljava/lang/Object;
.source "BaseMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/BaseMediaSet;->updateCoverHashCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/BaseMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/BaseMediaSet;)V
    .locals 0

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$6;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1130
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$6;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->onUpdateCoverHashCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1137
    .local v4, "hashCode":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$6;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    const/16 v1, -0x754e

    const/4 v5, 0x1

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z

    .line 1138
    return-void

    .line 1132
    .end local v4    # "hashCode":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1134
    .local v6, "ex":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$6;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    # getter for: Lcom/oneplus/gallery/media/BaseMediaSet;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->access$100(Lcom/oneplus/gallery/media/BaseMediaSet;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateCoverHashCode() - Unhandled error"

    invoke-static {v0, v1, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1135
    const/4 v4, 0x0

    .restart local v4    # "hashCode":Ljava/lang/String;
    goto :goto_0
.end method
