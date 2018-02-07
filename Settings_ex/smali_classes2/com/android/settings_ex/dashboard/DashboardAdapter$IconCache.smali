.class Lcom/android/settings_ex/dashboard/DashboardAdapter$IconCache;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/DashboardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconCache"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/graphics/drawable/Icon;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$IconCache;->mMap:Landroid/util/ArrayMap;

    .line 581
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$IconCache;->mContext:Landroid/content/Context;

    .line 580
    return-void
.end method


# virtual methods
.method public getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 585
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$IconCache;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 586
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardAdapter$IconCache;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_0
    return-object v0
.end method
