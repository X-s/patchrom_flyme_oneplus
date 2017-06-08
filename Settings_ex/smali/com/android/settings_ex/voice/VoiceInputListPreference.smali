.class public Lcom/android/settings_ex/voice/VoiceInputListPreference;
.super Lcom/android/settings_ex/AppListPreferenceWithSettings;
.source "VoiceInputListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/voice/VoiceInputListPreference$CustomAdapter;
    }
.end annotation


# instance fields
.field private mAssistRestrict:Landroid/content/ComponentName;

.field private final mAvailableIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/AppListPreferenceWithSettings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    .line 29
    const v0, 0x7f0c0d0a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->setDialogTitle(I)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/voice/VoiceInputListPreference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/voice/VoiceInputListPreference;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/android/settings_ex/voice/VoiceInputListPreference$CustomAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings_ex/voice/VoiceInputListPreference$CustomAdapter;-><init>(Lcom/android/settings_ex/voice/VoiceInputListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getCurrentService()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings_ex/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings_ex/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    .line 130
    :goto_0
    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings_ex/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v0, v0, Lcom/android/settings_ex/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings_ex/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings_ex/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;

    .line 41
    .local v1, "info":Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;
    iget-object v2, v1, Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_interaction_service"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_recognition_service"

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;->service:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;->serviceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, v1, Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;->settings:Landroid/content/ComponentName;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    .line 69
    .end local v1    # "info":Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;
    :goto_1
    return v7

    .line 39
    .restart local v1    # "info":Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "info":Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings_ex/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 56
    iget-object v2, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v2, v2, Lcom/android/settings_ex/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/voice/VoiceInputHelper$RecognizerInfo;

    .line 57
    .local v1, "info":Lcom/android/settings_ex/voice/VoiceInputHelper$RecognizerInfo;
    iget-object v2, v1, Lcom/android/settings_ex/voice/VoiceInputHelper$RecognizerInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_interaction_service"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_recognition_service"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, v1, Lcom/android/settings_ex/voice/VoiceInputHelper$RecognizerInfo;->settings:Landroid/content/ComponentName;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    goto :goto_1

    .line 55
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 68
    .end local v1    # "info":Lcom/android/settings_ex/voice/VoiceInputHelper$RecognizerInfo;
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    goto :goto_1
.end method

.method public refreshVoiceInputs()V
    .locals 9

    .prologue
    .line 82
    new-instance v7, Lcom/android/settings_ex/voice/VoiceInputHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings_ex/voice/VoiceInputHelper;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    .line 83
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    invoke-virtual {v7}, Lcom/android/settings_ex/voice/VoiceInputHelper;->buildUi()V

    .line 85
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mAssistRestrict:Landroid/content/ComponentName;

    if-nez v7, :cond_1

    const-string v0, ""

    .line 88
    .local v0, "assistKey":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings_ex/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 92
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings_ex/voice/VoiceInputHelper;->mAvailableInteractionInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;

    .line 93
    .local v4, "info":Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;
    iget-object v7, v4, Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v7, v4, Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v7, v4, Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;->key:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 85
    .end local v0    # "assistKey":Ljava/lang/String;
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v3    # "i":I
    .end local v4    # "info":Lcom/android/settings_ex/voice/VoiceInputHelper$InteractionInfo;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mAssistRestrict:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    .restart local v0    # "assistKey":Ljava/lang/String;
    .restart local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v3    # "i":I
    .restart local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v1, 0x1

    .line 102
    .local v1, "assitIsService":Z
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 104
    .local v5, "serviceCount":I
    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings_ex/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 105
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings_ex/voice/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/voice/VoiceInputHelper$RecognizerInfo;

    .line 106
    .local v4, "info":Lcom/android/settings_ex/voice/VoiceInputHelper$RecognizerInfo;
    iget-object v7, v4, Lcom/android/settings_ex/voice/VoiceInputHelper$RecognizerInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v7, v4, Lcom/android/settings_ex/voice/VoiceInputHelper$RecognizerInfo;->key:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    if-nez v1, :cond_3

    .line 109
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mAvailableIndexes:Ljava/util/List;

    add-int v8, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 101
    .end local v1    # "assitIsService":Z
    .end local v4    # "info":Lcom/android/settings_ex/voice/VoiceInputHelper$RecognizerInfo;
    .end local v5    # "serviceCount":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 112
    .restart local v1    # "assitIsService":Z
    .restart local v5    # "serviceCount":I
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 113
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 115
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings_ex/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    if-eqz v7, :cond_6

    .line 116
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings_ex/voice/VoiceInputHelper;->mCurrentVoiceInteraction:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    .line 122
    :goto_4
    return-void

    .line 117
    :cond_6
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings_ex/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    if-eqz v7, :cond_7

    .line 118
    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mHelper:Lcom/android/settings_ex/voice/VoiceInputHelper;

    iget-object v7, v7, Lcom/android/settings_ex/voice/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 120
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/voice/VoiceInputListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setAssistRestrict(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "assistRestrict"    # Landroid/content/ComponentName;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/voice/VoiceInputListPreference;->mAssistRestrict:Landroid/content/ComponentName;

    .line 79
    return-void
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/CharSequence;
    .param p2, "defaultPackageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 75
    return-void
.end method
