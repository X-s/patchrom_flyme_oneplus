.class final Lcom/android/settings_exlib/drawer/TileUtils$1;
.super Ljava/lang/Object;
.source "TileUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/drawer/TileUtils;
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
        "Lcom/android/settings_exlib/drawer/Tile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_exlib/drawer/Tile;Lcom/android/settings_exlib/drawer/Tile;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/settings_exlib/drawer/Tile;
    .param p2, "rhs"    # Lcom/android/settings_exlib/drawer/Tile;

    .prologue
    .line 352
    iget v0, p2, Lcom/android/settings_exlib/drawer/Tile;->priority:I

    iget v1, p1, Lcom/android/settings_exlib/drawer/Tile;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 351
    check-cast p1, Lcom/android/settings_exlib/drawer/Tile;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings_exlib/drawer/Tile;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_exlib/drawer/TileUtils$1;->compare(Lcom/android/settings_exlib/drawer/Tile;Lcom/android/settings_exlib/drawer/Tile;)I

    move-result v0

    return v0
.end method
