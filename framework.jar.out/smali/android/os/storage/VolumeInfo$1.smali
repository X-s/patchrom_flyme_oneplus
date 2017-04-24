.class final Landroid/os/storage/VolumeInfo$1;
.super Ljava/lang/Object;
.source "VolumeInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/VolumeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/os/storage/VolumeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)I
    .locals 3
    .param p1, "lhs"    # Landroid/os/storage/VolumeInfo;
    .param p2, "rhs"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v0, -0x1

    .line 105
    const-string/jumbo v1, "private"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 102
    check-cast p1, Landroid/os/storage/VolumeInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/os/storage/VolumeInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/storage/VolumeInfo$1;->compare(Landroid/os/storage/VolumeInfo;Landroid/os/storage/VolumeInfo;)I

    move-result v0

    return v0
.end method
