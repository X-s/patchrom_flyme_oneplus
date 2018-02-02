.class Landroid/support/v4/app/RemoteInputCompatJellybean;
.super Ljava/lang/Object;
.source "RemoteInputCompatJellybean.java"


# static fields
.field public static final EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"

.field private static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String; = "allowFreeFormInput"

.field private static final KEY_CHOICES:Ljava/lang/String; = "choices"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_RESULT_KEY:Ljava/lang/String; = "resultKey"

.field public static final RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addResultsToIntent([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 96
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 97
    array-length v3, p0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.remoteinput.resultsData"

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v1, "android.remoteinput.results"

    .line 105
    invoke-static {v1, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 106
    return-void

    .line 97
    :cond_0
    aget-object v4, p0, v1

    .line 98
    invoke-virtual {v4}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    instance-of v5, v0, Ljava/lang/CharSequence;

    if-nez v5, :cond_1

    .line 97
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v4}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static fromBundle(Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 6

    .prologue
    const-string/jumbo v0, "resultKey"

    .line 39
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "label"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string/jumbo v0, "choices"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    const-string/jumbo v0, "allowFreeFormInput"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v0, "extras"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v0

    return-object v0
.end method

.method static fromBundleArray([Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 58
    if-eqz p0, :cond_0

    .line 61
    array-length v0, p0

    invoke-interface {p1, v0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->newArray(I)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v1

    const/4 v0, 0x0

    .line 62
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 65
    return-object v1

    .line 59
    :cond_0
    return-object v0

    .line 63
    :cond_1
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Landroid/support/v4/app/RemoteInputCompatJellybean;->fromBundle(Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v2

    aput-object v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const-string/jumbo v2, "text/vnd.android.intent"

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "android.remoteinput.results"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    return-object v3

    .line 82
    :cond_0
    return-object v3

    .line 86
    :cond_1
    return-object v3

    .line 89
    :cond_2
    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "android.remoteinput.resultsData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method static toBundle(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "resultKey"

    .line 48
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "label"

    .line 49
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "choices"

    .line 50
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "allowFreeFormInput"

    .line 51
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getAllowFreeFormInput()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "extras"

    .line 52
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    return-object v0
.end method

.method static toBundleArray([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 69
    if-eqz p0, :cond_0

    .line 72
    array-length v0, p0

    new-array v1, v0, [Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 73
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 76
    return-object v1

    .line 70
    :cond_0
    return-object v0

    .line 74
    :cond_1
    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/support/v4/app/RemoteInputCompatJellybean;->toBundle(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v1, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
