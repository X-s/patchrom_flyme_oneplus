.class public Lcom/waves/maxxaudio/WavesFXSharedPreference;
.super Ljava/lang/Object;
.source "WavesFXSharedPreference.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# static fields
.field public static final KEY_WAVESFX_PREFERENCE_ENABLED:Ljava/lang/String; = "value_wavesfx_preference_enabled"

.field public static final KEY_WAVESFX_PREFERENCE_FLOATING_BUTTONS_ENABLED:Ljava/lang/String; = "value_wavesfx_preference_floating_buttons_enabled"

.field public static final KEY_WAVESFX_PREFERENCE_LEVELER:Ljava/lang/String; = "value_wavesfx_preference_leveler"

.field public static final KEY_WAVESFX_PREFERENCE_MEDIA_TYPE:Ljava/lang/String; = "value_wavesfx_preference_media_type"

.field public static final KEY_WAVESFX_PREFERENCE_PRESET_FILE:Ljava/lang/String; = "value_wavesfx_preference_presets_file"

.field public static final KEY_WAVESFX_PREFERENCE_TCPIP_ENABLED:Ljava/lang/String; = "value_wavesfx_preference_tcpip_enabled"

.field public static final MEDIA_TYPE_GAMES:I = 0x2

.field public static final MEDIA_TYPE_MOVIES:I = 0x1

.field public static final MEDIA_TYPE_MUSIC:I = 0x0

.field public static final MEDIA_TYPE_OFF:I = 0x5

.field public static final MEDIA_TYPE_RECORDING:I = 0x4

.field public static final MEDIA_TYPE_SPEECH:I = 0x3

.field public static final UNINITILIZED_VALUE:I = -0x1

.field public static final WAVESFX_PREFERENCE_NAME:Ljava/lang/String; = "com_oneplus_tuner_wavesfx"


# instance fields
.field private m_SharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "in_SharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    .line 31
    return-void
.end method


# virtual methods
.method public GetMediaType()I
    .locals 4

    .prologue
    .line 34
    iget-object v1, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "value_wavesfx_preference_media_type"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "mediaType_str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 39
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public SetMediaType(I)V
    .locals 4
    .param p1, "mediaType"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "value_wavesfx_preference_media_type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 80
    iget-object v0, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 90
    iget-object v0, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "arg1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 49
    const-string v0, "value_wavesfx_preference_enabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/waves/maxxaudio/WavesFXSharedPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 103
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "in_Enabled"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "value_wavesfx_preference_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/waves/maxxaudio/WavesFXSharedPreference;->m_SharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 111
    return-void
.end method
