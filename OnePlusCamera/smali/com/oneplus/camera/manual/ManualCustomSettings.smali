.class public Lcom/oneplus/camera/manual/ManualCustomSettings;
.super Lcom/oneplus/base/Settings;
.source "ManualCustomSettings.java"


# static fields
.field public static final MANUAL_AWB:Ljava/lang/String; = "Manual.AWB"

.field public static final MANUAL_AWB_TICK:Ljava/lang/String; = "Manual.AWB.TICK"

.field public static final MANUAL_COLOR_TEMPERATURE:Ljava/lang/String; = "Manual.COLOR.TEMPERATURE"

.field public static final MANUAL_COLOR_TEMPERATURE_TICK:Ljava/lang/String; = "Manual.COLOR.TEMPERATURE.TICK"

.field public static final MANUAL_EV:Ljava/lang/String; = "Manual.EV"

.field public static final MANUAL_EV_TICK:Ljava/lang/String; = "Manual.EV.TICK"

.field public static final MANUAL_EXPOSURE:Ljava/lang/String; = "Manual.EXPOSURE"

.field public static final MANUAL_EXPOSURE_TICK:Ljava/lang/String; = "Manual.EXPOSURE.TICK"

.field public static final MANUAL_FOCUS:Ljava/lang/String; = "Manual.FOCUS"

.field public static final MANUAL_FOCUS_TICK:Ljava/lang/String; = "Manual.FOCUS.TICK"

.field public static final MANUAL_ISO:Ljava/lang/String; = "Manual.ISO"

.field public static final MANUAL_ISO_TICK:Ljava/lang/String; = "Manual.ISO.TICK"

.field public static final MANUAL_SETTING_SAVED:Ljava/lang/String; = "Manual.Saved"


# instance fields
.field private m_KeyValueCounters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_KeyValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isVolatile"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValues:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValueCounters:Ljava/util/Map;

    .line 43
    return-void
.end method

.method private getManualCustomSetting(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 138
    const-string/jumbo v0, "Manual.AWB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string/jumbo v0, "Manual.AWB"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    const-string/jumbo v0, "Manual.AWB.TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    const-string/jumbo v0, "Manual.AWB.TICK"

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 138
    :cond_1
    const-string/jumbo v0, "Manual.COLOR.TEMPERATURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    const-string/jumbo v0, "Manual.COLOR.TEMPERATURE"

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 138
    :cond_2
    const-string/jumbo v0, "Manual.COLOR.TEMPERATURE.TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    const-string/jumbo v0, "Manual.COLOR.TEMPERATURE.TICK"

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 138
    :cond_3
    const-string/jumbo v0, "Manual.ISO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    const-string/jumbo v0, "Manual.ISO"

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 138
    :cond_4
    const-string/jumbo v0, "Manual.ISO.TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    const-string/jumbo v0, "Manual.ISO.TICK"

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 138
    :cond_5
    const-string/jumbo v0, "Manual.EV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    const-string/jumbo v0, "Manual.EV"

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 138
    :cond_6
    const-string/jumbo v0, "Manual.EV.TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    const-string/jumbo v0, "Manual.EV.TICK"

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 138
    :cond_7
    const-string/jumbo v0, "Manual.EXPOSURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    const-string/jumbo v0, "Manual.EXPOSURE"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 138
    :cond_8
    const-string/jumbo v0, "Manual.EXPOSURE.TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 168
    const-string/jumbo v0, "Manual.EXPOSURE.TICK"

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 138
    :cond_9
    const-string/jumbo v0, "Manual.FOCUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 171
    const-string/jumbo v0, "Manual.FOCUS"

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 138
    :cond_a
    const-string/jumbo v0, "Manual.FOCUS.TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 174
    const-string/jumbo v0, "Manual.FOCUS.TICK"

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 138
    :cond_b
    const-string/jumbo v0, "RawCapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 177
    const-string/jumbo v0, "RawCapture"

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 138
    :cond_c
    const-string/jumbo v0, "SelfTimer.Back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 180
    const-string/jumbo v0, "SelfTimer.Back"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 138
    :cond_d
    const-string/jumbo v0, "Resolution.Photo.Back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 183
    const-string/jumbo v0, "Resolution.Photo.Back"

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private isManualCustomSettingKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string/jumbo v0, "Manual.AWB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 215
    :cond_1
    const-string/jumbo v0, "Manual.AWB.TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Manual.COLOR.TEMPERATURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Manual.COLOR.TEMPERATURE.TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Manual.ISO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Manual.ISO.TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Manual.EV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Manual.EV.TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Manual.EXPOSURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Manual.EXPOSURE.TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Manual.FOCUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Manual.FOCUS.TICK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Manual.Saved"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "RawCapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SelfTimer.Back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Resolution.Photo.Back"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abandonUnCommittedValues()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    return-void
.end method

.method public commitManualCustomSetting()V
    .locals 5

    .prologue
    .line 61
    new-instance v0, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValues:Ljava/util/Map;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 62
    .local v0, "cloneKeyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 63
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-super {p0, v3, v4}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public copyCustomSettings(Lcom/oneplus/base/Settings;)V
    .locals 5
    .param p1, "setting"    # Lcom/oneplus/base/Settings;

    .prologue
    const/4 v4, 0x0

    .line 75
    if-nez p1, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    const-string/jumbo v0, "RawCapture"

    const-string/jumbo v1, "RawCapture"

    invoke-virtual {p1, v1}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    const-string/jumbo v0, "Resolution.Photo.Back"

    const-string/jumbo v1, "Resolution.Photo.Back"

    invoke-virtual {p1, v1}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string/jumbo v0, "SelfTimer.Back"

    const-string/jumbo v1, "SelfTimer.Back"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/oneplus/base/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string/jumbo v0, "Manual.ISO"

    const-string/jumbo v1, "Manual.ISO"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string/jumbo v0, "Manual.AWB"

    const-string/jumbo v1, "Manual.AWB"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string/jumbo v0, "Manual.COLOR.TEMPERATURE"

    const-string/jumbo v1, "Manual.COLOR.TEMPERATURE"

    invoke-virtual {p1, v1, v4}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string/jumbo v0, "Manual.EXPOSURE"

    const-string/jumbo v1, "Manual.EXPOSURE"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Lcom/oneplus/base/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string/jumbo v0, "Manual.EV"

    const-string/jumbo v1, "Manual.EV"

    invoke-virtual {p1, v1, v4}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string/jumbo v0, "Manual.FOCUS"

    const-string/jumbo v1, "Manual.FOCUS"

    const/16 v2, -0x2710

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string/jumbo v0, "Manual.ISO.TICK"

    const-string/jumbo v1, "Manual.ISO.TICK"

    invoke-virtual {p1, v1}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string/jumbo v0, "Manual.AWB.TICK"

    const-string/jumbo v1, "Manual.AWB.TICK"

    invoke-virtual {p1, v1}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string/jumbo v0, "Manual.COLOR.TEMPERATURE.TICK"

    const-string/jumbo v1, "Manual.COLOR.TEMPERATURE.TICK"

    invoke-virtual {p1, v1}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string/jumbo v0, "Manual.EXPOSURE.TICK"

    const-string/jumbo v1, "Manual.EXPOSURE.TICK"

    invoke-virtual {p1, v1}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string/jumbo v0, "Manual.EV.TICK"

    const-string/jumbo v1, "Manual.EV.TICK"

    invoke-virtual {p1, v1}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string/jumbo v0, "Manual.FOCUS.TICK"

    const-string/jumbo v1, "Manual.FOCUS.TICK"

    invoke-virtual {p1, v1}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 103
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 107
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 114
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 116
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 118
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/Settings;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 125
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 128
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 129
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    return-wide v2

    .line 131
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/base/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 196
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 199
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasUnCommitedChanges()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPrivateKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->isManualCustomSettingKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x1

    return v0

    .line 253
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/base/Settings;->isPrivateKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onValueChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValueCounters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValueCounters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 261
    invoke-super {p0, p1}, Lcom/oneplus/base/Settings;->onValueChanged(Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->isManualCustomSettingKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 277
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValues:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    invoke-direct {p0, p1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->getManualCustomSetting(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 281
    .local v1, "obj":Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 283
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    return-void

    .line 288
    :cond_0
    if-nez v1, :cond_1

    .line 289
    return-void

    .line 294
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValueCounters:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 295
    .local v0, "keyvalue_counts":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    .line 296
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValueCounters:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :goto_0
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValues:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/manual/ManualCustomSettings;->notifyValueChanged(Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValueCounters:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "keyvalue_counts":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 307
    .restart local v0    # "keyvalue_counts":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_4

    .line 311
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValueCounters:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .end local v0    # "keyvalue_counts":Ljava/lang/Integer;
    :cond_2
    :goto_1
    return-void

    .line 298
    .restart local v0    # "keyvalue_counts":Ljava/lang/Integer;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValueCounters:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 313
    :cond_4
    iget-object v2, p0, Lcom/oneplus/camera/manual/ManualCustomSettings;->m_KeyValueCounters:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 317
    .end local v0    # "keyvalue_counts":Ljava/lang/Integer;
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
