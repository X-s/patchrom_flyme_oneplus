.class final Lcom/oneplus/gallery/providers/GalleryDatabaseManager$9;
.super Ljava/lang/Object;
.source "GalleryDatabaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->onAlbumMediaRelationUpdated(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$albumMediaRelationInfo:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

.field final synthetic val$listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;)V
    .locals 0

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$9;->val$listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    iput-object p2, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$9;->val$albumMediaRelationInfo:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$9;->val$listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    iget-object v1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$9;->val$albumMediaRelationInfo:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumMediaRelationInfo;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onUpdated(Ljava/lang/Object;)V

    .line 1238
    return-void
.end method
