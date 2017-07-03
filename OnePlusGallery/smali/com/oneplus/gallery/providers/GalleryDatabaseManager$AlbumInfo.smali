.class public final Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
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
    name = "AlbumInfo"
.end annotation


# instance fields
.field public dateAdded:J

.field public dateMediaAdded:J

.field public dateModified:J

.field public displayName:Ljava/lang/String;

.field public id:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JJJ)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "dateAdded"    # J
    .param p6, "dateModified"    # J
    .param p8, "dateMediaAdded"    # J

    .prologue
    const-wide/16 v0, -0x1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-wide v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->id:J

    .line 235
    iput-wide v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateAdded:J

    .line 236
    iput-wide v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateMediaAdded:J

    .line 237
    iput-wide v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateModified:J

    .line 246
    invoke-virtual/range {p0 .. p9}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->set(JLjava/lang/String;JJJ)V

    .line 247
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-wide v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->id:J

    .line 235
    iput-wide v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateAdded:J

    .line 236
    iput-wide v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateMediaAdded:J

    .line 237
    iput-wide v0, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateModified:J

    .line 241
    iput-object p1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->displayName:Ljava/lang/String;

    .line 242
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    .locals 3

    .prologue
    .line 253
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-object v1

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Throwable;
    # getter for: Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clone() - Error when clone album info"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
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
    .line 231
    invoke-virtual {p0}, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->clone()Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;

    move-result-object v0

    return-object v0
.end method

.method public set(JLjava/lang/String;JJJ)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "dateAdded"    # J
    .param p6, "dateModified"    # J
    .param p8, "dateMediaAdded"    # J

    .prologue
    .line 264
    iput-wide p1, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->id:J

    .line 265
    iput-object p3, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->displayName:Ljava/lang/String;

    .line 266
    iput-wide p4, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateAdded:J

    .line 267
    iput-wide p6, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateModified:J

    .line 268
    iput-wide p8, p0, Lcom/oneplus/gallery/providers/GalleryDatabaseManager$AlbumInfo;->dateMediaAdded:J

    .line 269
    return-void
.end method
