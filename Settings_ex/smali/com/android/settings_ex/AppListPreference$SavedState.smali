.class Lcom/android/settings_ex/AppListPreference$SavedState;
.super Ljava/lang/Object;
.source "AppListPreference.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AppListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/AppListPreference$SavedState$1;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings_ex/AppListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final entryValues:[Ljava/lang/CharSequence;

.field public final showItemNone:Z

.field public final summaries:[Ljava/lang/CharSequence;

.field public final superState:Landroid/os/Parcelable;

.field public final value:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/android/settings_ex/AppListPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings_ex/AppListPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/AppListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 303
    return-void
.end method

.method public constructor <init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "summaries"    # [Ljava/lang/CharSequence;
    .param p4, "showItemNone"    # Z
    .param p5, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/android/settings_ex/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    .line 314
    iput-object p2, p0, Lcom/android/settings_ex/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    .line 315
    iput-boolean p4, p0, Lcom/android/settings_ex/AppListPreference$SavedState;->showItemNone:Z

    .line 316
    iput-object p5, p0, Lcom/android/settings_ex/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    .line 317
    iput-object p3, p0, Lcom/android/settings_ex/AppListPreference$SavedState;->summaries:[Ljava/lang/CharSequence;

    .line 312
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 329
    iget-boolean v0, p0, Lcom/android/settings_ex/AppListPreference$SavedState;->showItemNone:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/AppListPreference$SavedState;->summaries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 326
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
