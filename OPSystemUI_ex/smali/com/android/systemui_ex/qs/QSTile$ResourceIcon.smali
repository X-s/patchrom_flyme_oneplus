.class public Lcom/android/systemui_ex/qs/QSTile$ResourceIcon;
.super Lcom/android/systemui_ex/qs/QSTile$Icon;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceIcon"
.end annotation


# static fields
.field private static final ICONS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui_ex/qs/QSTile$Icon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 336
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui_ex/qs/QSTile$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 360
    instance-of v0, p1, Lcom/android/systemui_ex/qs/QSTile$ResourceIcon;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui_ex/qs/QSTile$ResourceIcon;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Lcom/android/systemui_ex/qs/QSTile$ResourceIcon;->mResId:I

    iget v1, p0, Lcom/android/systemui_ex/qs/QSTile$ResourceIcon;->mResId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 355
    iget v0, p0, Lcom/android/systemui_ex/qs/QSTile$ResourceIcon;->mResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 365
    const-string v0, "ResourceIcon[resId=0x%08x]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui_ex/qs/QSTile$ResourceIcon;->mResId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
