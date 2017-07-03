.class Lcom/oneplus/gallery/media/MediaManagerImpl$27;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->openGroupMediaList(Lcom/oneplus/gallery/media/MediaComparator;Ljava/lang/String;I)Lcom/oneplus/gallery/media/MediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$groupId:Ljava/lang/String;

.field final synthetic val$mediaList:Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;J)V
    .locals 0

    .prologue
    .line 4048
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$27;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$27;->val$groupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$27;->val$mediaList:Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;

    iput-wide p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$27;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4052
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$27;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_GroupMediaTable:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$3300(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$27;->val$groupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/GroupMedia;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/GroupMedia;->getSubMedia()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4053
    .local v0, "groupMediaList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/media/Media;>;"
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$27;->val$mediaList:Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;

    invoke-virtual {v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$GroupMediaListImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/media/MediaManagerImpl$27$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$27$1;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl$27;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4063
    return-void
.end method
