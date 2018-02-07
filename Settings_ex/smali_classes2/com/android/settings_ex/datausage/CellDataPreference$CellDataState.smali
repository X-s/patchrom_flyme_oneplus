.class public Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;
.super Landroid/support/v7/preference/Preference$BaseSavedState;
.source "CellDataPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/CellDataPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellDataState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mChecked:Z

.field public mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState$1;

    invoke-direct {v0}, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;->mChecked:Z

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;->mSubId:I

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "base"    # Landroid/os/Parcelable;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 195
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 207
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 208
    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 209
    iget v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
