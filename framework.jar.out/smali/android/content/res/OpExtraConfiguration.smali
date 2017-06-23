.class public Landroid/content/res/OpExtraConfiguration;
.super Ljava/lang/Object;
.source "OpExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final THEME_OLD_SKIN_CHANGED:I = 0x8000000


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field public mThemeChanged:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "OpExtraConfiguration"

    iput-object v0, p0, Landroid/content/res/OpExtraConfiguration;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/OpExtraConfiguration;->DEBUG:Z

    .line 17
    return-void
.end method

.method public static needNewResources(I)Z
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "flag":Z
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/content/res/OpExtraConfiguration;)I
    .locals 3
    .param p1, "extraconfiguration"    # Landroid/content/res/OpExtraConfiguration;

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "i":I
    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    sub-int v0, v1, v2

    .line 26
    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Landroid/content/res/OpExtraConfiguration;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/OpExtraConfiguration;->compareTo(Landroid/content/res/OpExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public diff(Landroid/content/res/OpExtraConfiguration;)I
    .locals 3
    .param p1, "extraconfiguration"    # Landroid/content/res/OpExtraConfiguration;

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "i":I
    iget v1, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    .line 58
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 60
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    .line 79
    return-void
.end method

.method public setTo(Landroid/content/res/OpExtraConfiguration;)V
    .locals 1
    .param p1, "extraconfiguration"    # Landroid/content/res/OpExtraConfiguration;

    .prologue
    .line 30
    iget v0, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iput v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    .line 31
    return-void
.end method

.method public setToDefaults()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, "stringbuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mThemeChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/OpExtraConfiguration;)I
    .locals 3
    .param p1, "extraconfiguration"    # Landroid/content/res/OpExtraConfiguration;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "i":I
    iget v1, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    .line 48
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 49
    iget v1, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iput v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    .line 51
    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 74
    iget v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    return-void
.end method
