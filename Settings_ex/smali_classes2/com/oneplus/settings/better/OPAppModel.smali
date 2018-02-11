.class public Lcom/oneplus/settings/better/OPAppModel;
.super Ljava/lang/Object;
.source "OPAppModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/OPAppModel$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private isSelected:Z

.field private label:Ljava/lang/String;

.field private lockMode:I

.field private pkgName:Ljava/lang/String;

.field private shortCutId:Ljava/lang/String;

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel$1;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPAppModel$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/OPAppModel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/better/OPAppModel;->readFromParcel(Landroid/os/Parcel;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "shortCutId"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "isSelected"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/oneplus/settings/better/OPAppModel;->label:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/oneplus/settings/better/OPAppModel;->shortCutId:Ljava/lang/String;

    .line 21
    iput p4, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    .line 22
    iput-boolean p5, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    .line 16
    return-void
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lcom/oneplus/settings/better/OPAppModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLockMode()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/oneplus/settings/better/OPAppModel;->lockMode:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortCutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->shortCutId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/better/OPAppModel;->lockMode:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    .line 105
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 61
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->label:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setLockMode(I)V
    .locals 0
    .param p1, "lockMode"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/oneplus/settings/better/OPAppModel;->lockMode:I

    .line 77
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    .line 29
    return-void
.end method

.method public setShortCutId(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortCutId"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppModel;->shortCutId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    .line 69
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppModel;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Lcom/oneplus/settings/better/OPAppModel;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/oneplus/settings/better/OPAppModel;->lockMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPAppModel;->isSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
