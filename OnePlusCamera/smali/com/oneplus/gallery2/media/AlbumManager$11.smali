.class Lcom/oneplus/gallery2/media/AlbumManager$11;
.super Ljava/lang/Object;
.source "AlbumManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/AlbumManager;->updateLastMediaAddedTime(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/AlbumManager;

.field private final synthetic val$albumInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/AlbumManager;Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/AlbumManager$11;->this$0:Lcom/oneplus/gallery2/media/AlbumManager;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/AlbumManager$11;->val$albumInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/oneplus/gallery2/media/AlbumManager$11;->val$albumInfo:Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->updateAlbumInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$AlbumInfo;)Z

    .line 1033
    return-void
.end method
