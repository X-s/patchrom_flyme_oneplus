.class public Lcom/oneplus/base/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static m_IsHydrogenOS:Ljava/lang/Boolean;

.field private static m_IsOnePlus:Ljava/lang/Boolean;

.field private static m_IsOxygenOS:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/oneplus/base/Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/base/Device;->TAG:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 25
    :try_start_0
    const-string/jumbo v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 27
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 30
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/base/Device;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getSystemProperty() - Error when get system property"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return-object v7
.end method

.method public static isHydrogenOS()Z
    .locals 2

    .prologue
    .line 43
    sget-object v1, Lcom/oneplus/base/Device;->m_IsHydrogenOS:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Lcom/oneplus/base/Device;->m_IsHydrogenOS:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 47
    :cond_0
    const-string/jumbo v1, "ro.build.version.ota"

    invoke-static {v1}, Lcom/oneplus/base/Device;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "Hydrogen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, ".H."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/oneplus/base/Device;->m_IsHydrogenOS:Ljava/lang/Boolean;

    .line 52
    :goto_0
    sget-object v1, Lcom/oneplus/base/Device;->m_IsHydrogenOS:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 51
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/oneplus/base/Device;->m_IsHydrogenOS:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isOnePlus()Z
    .locals 3

    .prologue
    .line 63
    sget-object v2, Lcom/oneplus/base/Device;->m_IsOnePlus:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 64
    sget-object v2, Lcom/oneplus/base/Device;->m_IsOnePlus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 67
    :cond_0
    const-string/jumbo v2, "ro.product.brand"

    invoke-static {v2}, Lcom/oneplus/base/Device;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string/jumbo v2, "OnePlus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    const/4 v0, 0x1

    .line 73
    .local v0, "isOnePlusBrand":Z
    :goto_0
    invoke-static {}, Lcom/oneplus/base/Device;->isHydrogenOS()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/oneplus/base/Device;->isOxygenOS()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    .line 74
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oneplus/base/Device;->m_IsOnePlus:Ljava/lang/Boolean;

    .line 77
    :goto_1
    sget-object v2, Lcom/oneplus/base/Device;->m_IsOnePlus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 72
    .end local v0    # "isOnePlusBrand":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isOnePlusBrand":Z
    goto :goto_0

    .line 76
    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oneplus/base/Device;->m_IsOnePlus:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static isOxygenOS()Z
    .locals 2

    .prologue
    .line 88
    sget-object v1, Lcom/oneplus/base/Device;->m_IsOxygenOS:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lcom/oneplus/base/Device;->m_IsOxygenOS:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 92
    :cond_0
    const-string/jumbo v1, "ro.build.version.ota"

    invoke-static {v1}, Lcom/oneplus/base/Device;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "Oxygen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, ".O."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/oneplus/base/Device;->m_IsOxygenOS:Ljava/lang/Boolean;

    .line 97
    :goto_0
    sget-object v1, Lcom/oneplus/base/Device;->m_IsOxygenOS:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 96
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/oneplus/base/Device;->m_IsOxygenOS:Ljava/lang/Boolean;

    goto :goto_0
.end method
