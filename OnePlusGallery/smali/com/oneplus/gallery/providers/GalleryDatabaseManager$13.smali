.class final Lcom/oneplus/gallery/providers/GalleryDatabaseManager$13;
.super Ljava/lang/Object;
.source "GalleryDatabaseManager.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/oneplus/gallery/media/OPMediaManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$managerRef:Lcom/oneplus/base/Ref;

.field final synthetic val$syncManager:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/oneplus/base/Ref;)V
    .locals 0

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$13;->val$syncManager:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$13;->val$managerRef:Lcom/oneplus/base/Ref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 1363
    check-cast p1, Lcom/oneplus/gallery/media/OPMediaManager;

    .end local p1    # "x0":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$13;->onComponentFound(Lcom/oneplus/gallery/media/OPMediaManager;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/gallery/media/OPMediaManager;)V
    .locals 2
    .param p1, "component"    # Lcom/oneplus/gallery/media/OPMediaManager;

    .prologue
    .line 1368
    iget-object v1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$13;->val$syncManager:Ljava/lang/Object;

    monitor-enter v1

    .line 1370
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$13;->val$managerRef:Lcom/oneplus/base/Ref;

    invoke-interface {v0, p1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 1371
    iget-object v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$13;->val$syncManager:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1372
    monitor-exit v1

    .line 1373
    return-void

    .line 1372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
