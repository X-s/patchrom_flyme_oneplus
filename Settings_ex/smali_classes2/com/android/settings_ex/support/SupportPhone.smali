.class public final Lcom/android/settings_ex/support/SupportPhone;
.super Ljava/lang/Object;
.source "SupportPhone.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/support/SupportPhone$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings_ex/support/SupportPhone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isTollFree:Z

.field public final language:Ljava/lang/String;

.field public final number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/android/settings_ex/support/SupportPhone$1;

    invoke-direct {v0}, Lcom/android/settings_ex/support/SupportPhone$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/support/SupportPhone;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/support/SupportPhone;->language:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/support/SupportPhone;->number:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings_ex/support/SupportPhone;->isTollFree:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 40
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Phone config is invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 42
    :cond_0
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/android/settings_ex/support/SupportPhone;->language:Ljava/lang/String;

    .line 43
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string/jumbo v2, "tollfree"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/support/SupportPhone;->isTollFree:Z

    .line 44
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/settings_ex/support/SupportPhone;->number:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getDialIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 56
    const-string/jumbo v2, "tel"

    .line 55
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/android/settings_ex/support/SupportPhone;->number:Ljava/lang/String;

    .line 55
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/support/SupportPhone;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/support/SupportPhone;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-boolean v0, p0, Lcom/android/settings_ex/support/SupportPhone;->isTollFree:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
