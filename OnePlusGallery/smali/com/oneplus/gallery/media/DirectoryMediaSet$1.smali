.class Lcom/oneplus/gallery/media/DirectoryMediaSet$1;
.super Ljava/lang/Object;
.source "DirectoryMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/DirectoryMediaSet;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/DirectoryMediaSet;

.field final synthetic val$extraInfo:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/DirectoryMediaSet;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet$1;->this$0:Lcom/oneplus/gallery/media/DirectoryMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet$1;->val$extraInfo:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oneplus/gallery/media/DirectoryMediaSet$1;->val$extraInfo:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;

    invoke-static {v0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->setExtraDirectoryInfo(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraDirectoryInfo;)Z

    .line 189
    return-void
.end method
