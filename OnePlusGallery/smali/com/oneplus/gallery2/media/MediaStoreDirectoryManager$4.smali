.class Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$4;
.super Ljava/lang/Object;
.source "MediaStoreDirectoryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;->updateLastMediaAddedTime(Lcom/oneplus/gallery2/media/DirectoryMediaSet;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

.field final synthetic val$extraInfoToUpdate:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$4;->this$0:Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$4;->val$extraInfoToUpdate:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManager$4;->val$extraInfoToUpdate:Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/GalleryDatabase;->updateExtraDirectoryInfo(Lcom/oneplus/gallery2/media/GalleryDatabase$ExtraDirectoryInfo;)Z

    .line 820
    return-void
.end method
