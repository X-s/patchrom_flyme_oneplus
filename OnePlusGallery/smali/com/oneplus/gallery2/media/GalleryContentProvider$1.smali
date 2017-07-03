.class Lcom/oneplus/gallery2/media/GalleryContentProvider$1;
.super Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;
.source "GalleryContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/GalleryContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback",
        "<",
        "Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/GalleryContentProvider;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/GalleryContentProvider;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider$1;->this$0:Lcom/oneplus/gallery2/media/GalleryContentProvider;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/GalleryDatabase$ChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onAdded(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)V
    .locals 4
    .param p1, "value"    # Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider$1;->this$0:Lcom/oneplus/gallery2/media/GalleryContentProvider;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v2, p1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-static {v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->createExtraMediaInfoUri(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 52
    return-void
.end method

.method bridge synthetic onAdded(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/GalleryContentProvider$1;->onAdded(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)V

    return-void
.end method

.method onDeleted(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)V
    .locals 4
    .param p1, "value"    # Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider$1;->this$0:Lcom/oneplus/gallery2/media/GalleryContentProvider;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v2, p1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-static {v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->createExtraMediaInfoUri(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 58
    return-void
.end method

.method bridge synthetic onDeleted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/GalleryContentProvider$1;->onDeleted(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)V

    return-void
.end method

.method onUpdated(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)V
    .locals 4
    .param p1, "oldValue"    # Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;
    .param p2, "newValue"    # Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oneplus/gallery2/media/GalleryContentProvider$1;->this$0:Lcom/oneplus/gallery2/media/GalleryContentProvider;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/media/GalleryContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v2, p2, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;->mediaId:J

    invoke-static {v2, v3}, Lcom/oneplus/gallery2/media/GalleryDatabase;->createExtraMediaInfoUri(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 64
    return-void
.end method

.method bridge synthetic onUpdated(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/media/GalleryContentProvider$1;->onUpdated(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraMediaInfo;)V

    return-void
.end method
