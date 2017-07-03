.class final Lcom/oneplus/gallery/providers/GalleryDatabaseManager$3;
.super Ljava/lang/Object;
.source "GalleryDatabaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->callOnUpdated(Ljava/util/List;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$3;->val$listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    iput-object p2, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$3;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$3;->val$listener:Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;

    iget-object v1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$3;->val$data:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$GalleryDataChangedListener;->onUpdated(Ljava/lang/Object;)V

    .line 756
    return-void
.end method
