.class public final Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
.super Ljava/lang/Object;
.source "GalleryDatabaseManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/providers/GalleryDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtraMediaInfo"
.end annotation


# instance fields
.field public id:J

.field public oneplusFlags:I


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "oneplusFlags"    # I

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->set(JI)V

    .line 464
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    .locals 3

    .prologue
    .line 470
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    return-object v1

    .line 472
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Throwable;
    # getter for: Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clone() - Error when clone extra media info"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->clone()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public set(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "oneplusFlags"    # I

    .prologue
    .line 481
    iput-wide p1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->id:J

    .line 482
    iput p3, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$ExtraMediaInfo;->oneplusFlags:I

    .line 483
    return-void
.end method
