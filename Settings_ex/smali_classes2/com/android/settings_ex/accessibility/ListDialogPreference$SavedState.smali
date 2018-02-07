.class Lcom/android/settings_ex/accessibility/ListDialogPreference$SavedState;
.super Landroid/support/v7/preference/Preference$BaseSavedState;
.source "ListDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accessibility/ListDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accessibility/ListDialogPreference$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings_ex/accessibility/ListDialogPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 314
    new-instance v0, Lcom/android/settings_ex/accessibility/ListDialogPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings_ex/accessibility/ListDialogPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/accessibility/ListDialogPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 299
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/accessibility/ListDialogPreference$SavedState;->value:I

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 310
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 309
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 305
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 306
    iget v0, p0, Lcom/android/settings_ex/accessibility/ListDialogPreference$SavedState;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    return-void
.end method
