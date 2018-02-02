.class public final Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;
.super Landroid/app/Fragment;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceStateFragment"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "GalleryActivity.InstanceState"


# instance fields
.field public activityResultHandles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/oneplus/gallery/GalleryActivity$ActivityResultHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;->extras:Ljava/util/Map;

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;->setRetainInstance(Z)V

    .line 152
    return-void
.end method
