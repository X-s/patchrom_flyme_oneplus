.class public Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;
.super Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;
.source "OpLocalRingtonePickerActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;,
        Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;
    }
.end annotation


# static fields
.field private static final ALARMS_PATH:Ljava/lang/String;

.field private static final AUDIO_FILE_SELECTION_ALL:Ljava/lang/String; = "_data not like ? and (mime_type like ? or mime_type like \'application/ogg\')"

.field private static final AUDIO_FILE_SELECTION_PART:Ljava/lang/String; = "_data not like ? and duration < 60000 and (mime_type like ? or mime_type like \'application/ogg\')"

.field private static final MINTIME:J = 0xea60L

.field private static final NOTIFICATIONS_PATH:Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final RECORD_PATH:Ljava/lang/String;

.field private static final RECORD_URI:Landroid/net/Uri;

.field private static final RINGTONE_PATH:Ljava/lang/String;

.field private static final SDCARD_PATH:Ljava/lang/String;

.field private static final SELECTION_ARGS_ALL:[Ljava/lang/String;

.field private static final SELECTION_ARGS_PART:[Ljava/lang/String;


# instance fields
.field private isFirst:Z

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOpNoFilePreference:Lcom/oneplus/settings/ringtone/OpNoFilePreference;

.field private mSetExternalThread:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;

.field private mSystemRings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->RECORD_URI:Landroid/net/Uri;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->PROJECTION:[Ljava/lang/String;

    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->RINGTONE_PATH:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->NOTIFICATIONS_PATH:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->ALARMS_PATH:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Record/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->RECORD_PATH:Ljava/lang/String;

    .line 64
    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->RECORD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "audio/%"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->SELECTION_ARGS_ALL:[Ljava/lang/String;

    .line 66
    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->RECORD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "audio/%"

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->SELECTION_ARGS_PART:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->isFirst:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    .line 101
    new-instance v0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$1;-><init>(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->isFirst:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->isFirst:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->startTask(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;)Lcom/oneplus/settings/ringtone/OpNoFilePreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mOpNoFilePreference:Lcom/oneplus/settings/ringtone/OpNoFilePreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;Landroid/preference/Preference;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->updateExternalFile(Landroid/preference/Preference;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private checkDir()Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    sget-object v1, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->RINGTONE_PATH:Ljava/lang/String;

    .line 310
    .local v1, "dirPath":Ljava/lang/String;
    iget v2, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mType:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    .line 312
    :cond_0
    sget-object v1, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->NOTIFICATIONS_PATH:Ljava/lang/String;

    .line 316
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 318
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 320
    :cond_2
    return-object v1

    .line 313
    .end local v0    # "dir":Ljava/io/File;
    :cond_3
    iget v2, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 314
    sget-object v1, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->ALARMS_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method private initActionbar()V
    .locals 7

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 85
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 86
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 87
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 88
    const v5, 0x7f04007e

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "layout":Landroid/view/View;
    const v5, 0x7f0f0136

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 91
    .local v4, "spinner":Landroid/widget/Spinner;
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b007e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "mItems":[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v5, 0x7f04007d

    const v6, 0x1020014

    invoke-direct {v1, p0, v5, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 94
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x7f04007c

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 96
    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 97
    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 98
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method private startTask(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 205
    new-instance v0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;

    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;-><init>(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;

    .line 206
    if-nez p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;

    sget-object v3, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->RECORD_URI:Landroid/net/Uri;

    sget-object v4, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "_data not like ? and (mime_type like ? or mime_type like \'application/ogg\')"

    sget-object v6, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->SELECTION_ARGS_ALL:[Ljava/lang/String;

    const-string v7, "date_modified DESC,title DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mWorkAsyncTask:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;

    sget-object v3, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->RECORD_URI:Landroid/net/Uri;

    sget-object v4, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "_data not like ? and duration < 60000 and (mime_type like ? or mime_type like \'application/ogg\')"

    sget-object v6, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->SELECTION_ARGS_PART:[Ljava/lang/String;

    const-string v7, "date_modified DESC,title DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$WorkAsyncTask;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateChecks(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez v2, :cond_1

    .line 152
    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 148
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    .line 150
    .local v1, "p":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateDb(Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .param p1, "p"    # Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 355
    invoke-virtual {p1}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->getData()Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;

    move-result-object v8

    .line 356
    .local v8, "rd":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 357
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "_data=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p2, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 362
    .local v6, "cursor1":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 381
    .local v7, "defaultitem":Landroid/net/Uri;
    :goto_0
    const-string v0, "chenhl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultitem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/settings/ringtone/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-object v7

    .line 365
    .end local v7    # "defaultitem":Landroid/net/Uri;
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 366
    .local v9, "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v9, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v0, "title"

    iget-object v2, v8, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;->title:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v0, "mime_type"

    iget-object v2, v8, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;->mimetype:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mType:I

    if-ne v0, v10, :cond_1

    .line 370
    const-string v0, "is_ringtone"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 377
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .restart local v7    # "defaultitem":Landroid/net/Uri;
    goto :goto_0

    .line 371
    .end local v7    # "defaultitem":Landroid/net/Uri;
    :cond_1
    iget v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mType:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_3

    .line 373
    :cond_2
    const-string v0, "is_notification"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 375
    :cond_3
    const-string v0, "is_alarm"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method private updateExternalFile(Landroid/preference/Preference;)Landroid/net/Uri;
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 275
    const-string v4, "chenhl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getKey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/settings/ringtone/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    instance-of v4, p1, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    if-eqz v4, :cond_4

    move-object v2, p1

    .line 277
    check-cast v2, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;

    .line 278
    .local v2, "opf":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;->getData()Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;

    move-result-object v4

    iget-object v3, v4, Lcom/oneplus/settings/ringtone/OpRadioButtonPreference$RingData;->mData:Ljava/lang/String;

    .line 279
    .local v3, "path":Ljava/lang/String;
    const-string v4, "chenhl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/settings/ringtone/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, "oldfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$2;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$2;-><init>(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    const/4 v4, 0x0

    .line 305
    .end local v1    # "oldfile":Ljava/io/File;
    .end local v2    # "opf":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    .end local v3    # "path":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 292
    .restart local v1    # "oldfile":Ljava/io/File;
    .restart local v2    # "opf":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_0
    const/16 v4, 0x12c

    iget-object v5, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->playRingtone(ILandroid/net/Uri;)V

    .line 293
    if-eqz v3, :cond_1

    const-string v4, "/storage/emulated/legacy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 296
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0

    .line 299
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->checkDir()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 301
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 303
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->updateDb(Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 305
    .end local v0    # "newFile":Ljava/io/File;
    .end local v1    # "oldfile":Ljava/io/File;
    .end local v2    # "opf":Lcom/oneplus/settings/ringtone/OpRadioButtonPreference;
    .end local v3    # "path":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "oldfile"    # Ljava/io/File;
    .param p2, "newFile"    # Ljava/io/File;

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, "bytesum":I
    const/4 v1, 0x0

    .line 337
    .local v1, "byteread":I
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 338
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 339
    .local v5, "inStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 340
    .local v4, "fs":Ljava/io/FileOutputStream;
    const/16 v6, 0x5a4

    new-array v0, v6, [B

    .line 342
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 343
    add-int/2addr v2, v1

    .line 344
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    .end local v0    # "buffer":[B
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .end local v5    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 350
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 346
    .restart local v0    # "buffer":[B
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 347
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/oneplus/settings/ringtone/OpRingtoneBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f060041

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->addPreferencesFromResource(I)V

    .line 76
    const-string v0, "preference_nofile"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ringtone/OpNoFilePreference;

    iput-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mOpNoFilePreference:Lcom/oneplus/settings/ringtone/OpNoFilePreference;

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 78
    invoke-direct {p0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->initActionbar()V

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->startTask(I)V

    .line 80
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 225
    invoke-direct {p0, v0}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->updateChecks(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSetExternalThread:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSetExternalThread:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->stopThread()V

    .line 228
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSetExternalThread:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;

    .line 230
    :cond_0
    new-instance v1, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;-><init>(Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;Landroid/preference/Preference;)V

    iput-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSetExternalThread:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;

    .line 231
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSetExternalThread:Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity$SetExternalThread;->start()V

    .line 232
    const/4 v1, 0x1

    return v1
.end method

.method protected updateSelected()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OpLocalRingtonePickerActivity;->mSystemRings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 140
    :cond_0
    return-void
.end method
