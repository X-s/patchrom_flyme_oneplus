.class public Landroid/content/res/OpExtraConfiguration;
.super Ljava/lang/Object;
.source "OpExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final CONFIG_FLIPFONT:I = 0x20000000

.field public static final THEME_NEW_SKIN_CHANGED:I = 0x9000000

.field public static final THEME_OLD_SKIN_CHANGED:I = 0x8000000


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field public mFlipFont:I

.field public mThemeChanged:I

.field public mThemeChangedFlags:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "OpExtraConfiguration"

    iput-object v0, p0, Landroid/content/res/OpExtraConfiguration;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/OpExtraConfiguration;->DEBUG:Z

    .line 38
    return-void
.end method

.method public static needNewResources(I)Z
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "flag":Z
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/content/res/OpExtraConfiguration;)I
    .locals 4
    .param p1, "extraconfiguration"    # Landroid/content/res/OpExtraConfiguration;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "i":I
    iget v2, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iget v3, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    sub-int v0, v2, v3

    .line 48
    if-nez v0, :cond_0

    move v1, v0

    .line 56
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    return v1

    .line 54
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    iget v2, p0, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    iget v3, p1, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    sub-int v0, v2, v3

    move v1, v0

    .line 56
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 41
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
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "i":I
    iget v1, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    .line 106
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 110
    :cond_0
    iget v1, p1, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    iget v2, p1, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    if-eq v1, v2, :cond_1

    .line 111
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 113
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "i":I
    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iget-wide v2, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChangedFlags:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 143
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    add-int v0, v1, v2

    .line 144
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChangedFlags:J

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    .line 137
    return-void
.end method

.method public setTo(Landroid/content/res/OpExtraConfiguration;)V
    .locals 2
    .param p1, "extraconfiguration"    # Landroid/content/res/OpExtraConfiguration;

    .prologue
    .line 60
    iget v0, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iput v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    .line 61
    iget-wide v0, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChangedFlags:J

    iput-wide v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChangedFlags:J

    .line 62
    iget v0, p1, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    iput v0, p0, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    .line 63
    return-void
.end method

.method public setToDefaults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iput v2, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChangedFlags:J

    .line 81
    iput v2, p0, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, "stringbuilder":Ljava/lang/StringBuilder;
    const-string v1, "mThemeChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "mThemeChangedFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-wide v2, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChangedFlags:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "mFlipFont = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/OpExtraConfiguration;)I
    .locals 4
    .param p1, "extraconfiguration"    # Landroid/content/res/OpExtraConfiguration;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "i":I
    iget v1, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    .line 88
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 90
    iget v1, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iput v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    .line 91
    iget-wide v2, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChangedFlags:J

    iput-wide v2, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChangedFlags:J

    .line 94
    :cond_0
    iget v1, p1, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    iget v2, p1, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    if-eq v1, v2, :cond_1

    .line 95
    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    .line 96
    iget v1, p1, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    iput v1, p0, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    .line 98
    :cond_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 127
    iget v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-wide v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget v0, p0, Landroid/content/res/OpExtraConfiguration;->mFlipFont:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return-void
.end method
