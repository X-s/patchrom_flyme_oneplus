.class public Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;
.super Landroid/test/InstrumentationTestCase;
.source "UpgradeCenterUtilsTest.java"


# instance fields
.field testString0:Ljava/lang/String;

.field testString1:Ljava/lang/String;

.field testString10:Ljava/lang/String;

.field testString11:Ljava/lang/String;

.field testString12:Ljava/lang/String;

.field testString13:Ljava/lang/String;

.field testString14:Ljava/lang/String;

.field testString15:Ljava/lang/String;

.field testString2:Ljava/lang/String;

.field testString3:Ljava/lang/String;

.field testString4:Ljava/lang/String;

.field testString5:Ljava/lang/String;

.field testString6:Ljava/lang/String;

.field testString7:Ljava/lang/String;

.field testString8:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    .line 73
    const-string v0, "This is release note."

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString0:Ljava/lang/String;

    .line 76
    const-string v0, "This is release note.OPAPI_START-oplib.oneplus_sdk_utils:0.0.1;oplib.oneplus_sdk_wrapper:0.0.1;oplib.opcommoncontrol:0.0.1-OPAPI_END"

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString1:Ljava/lang/String;

    .line 79
    const-string v0, "OPAPI_START-oplib.oneplus_sdk_utils:0.0.1;oplib.oneplus_sdk_wrapper:0.0.1;oplib.opcommoncontrol:0.0.1-OPAPI_ENDThis is release note."

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString2:Ljava/lang/String;

    .line 82
    const-string v0, "This isOPAPI_START-oplib.oneplus_sdk_utils:0.0.1;oplib.oneplus_sdk_wrapper:0.0.1;oplib.opcommoncontrol:0.0.1-OPAPI_END release note."

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString3:Ljava/lang/String;

    .line 85
    const-string v0, "This is release note.PI_START-oplib.oneplus_sdk_utils:0.0.1;oplib.oneplus_sdk_wrapper:0.0.1;oplib.opcommoncontrol:0.0.1-OPAPI_END"

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString4:Ljava/lang/String;

    .line 88
    const-string v0, "This is release note.OPAPI_START-oplib.oneplus_sdk_utils:0.0.1;oplib.oneplus_sdk_wrapper:0.0.1;oplib.opcommoncontrol:0.0.1-OPAPI_E"

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString5:Ljava/lang/String;

    .line 91
    const-string v0, "This is release note.OPAPI_START-oplib.oneplus_sdk_uti0.1;oplib.oneplus_sdk_wrapper:0.0.1;oplib.opcommoncontrol:0.0.1-OPAPI_END"

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString6:Ljava/lang/String;

    .line 94
    const-string v0, "This is release note."

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString7:Ljava/lang/String;

    .line 96
    const-string v0, "This is reOPAPI_STARTOPAPI_ENDlease note."

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString8:Ljava/lang/String;

    .line 98
    const-string v0, "This is release note.OPAPI_START-oplib.oneplus_sdk_utils:0.0.1;oplib.oneplus_sdk_wrapper:0.0.1;oplib.opcommoncontrol:0.0.1;-OPAPI_END"

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString10:Ljava/lang/String;

    .line 100
    const-string v0, "This is release note.OPAPI_START-oplib.opcommoncontrol:0.1.1;oplib.oneplus_sdk_wrapper:0.0.1;oplib.oneplus_sdk_utils:0.0.1;-OPAPI_END"

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString11:Ljava/lang/String;

    .line 103
    const-string v0, "oplib.oneplus_sdk_utils:0.0.1;"

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString12:Ljava/lang/String;

    .line 105
    const-string v0, "oplib.oneplus_sdk_utils:100.0.1;"

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString13:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString14:Ljava/lang/String;

    .line 109
    const-string v0, "test_wrong_string"

    iput-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString15:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public testgetFilteredReleaseNote()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString0:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString1:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->getFilteredReleaseNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertTrue(Z)V

    .line 11
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString0:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString2:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->getFilteredReleaseNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertTrue(Z)V

    .line 12
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString0:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString3:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->getFilteredReleaseNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertTrue(Z)V

    .line 13
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString0:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString4:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->getFilteredReleaseNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertFalse(Z)V

    .line 14
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString0:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString5:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->getFilteredReleaseNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertFalse(Z)V

    .line 15
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString0:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString6:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->getFilteredReleaseNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertTrue(Z)V

    .line 16
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString0:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString7:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->getFilteredReleaseNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertTrue(Z)V

    .line 17
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString0:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString8:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->getFilteredReleaseNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertTrue(Z)V

    .line 18
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString0:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString10:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->getFilteredReleaseNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertTrue(Z)V

    .line 19
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString0:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString11:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->getFilteredReleaseNote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertTrue(Z)V

    .line 20
    return-void
.end method

.method public testisOnePlusUpgradablePackage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isOnePlusUpgradablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dummy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isOnePlusUpgradablePackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 40
    return-void
.end method

.method public testisRequiredOpApiCompatibleWithRom()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-virtual {p0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isRequiredOpApiCompatibleWithRom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v3, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.example.testopapi1"

    invoke-static {v1, v2}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isRequiredOpApiCompatibleWithRom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dummy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isRequiredOpApiCompatibleWithRom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v3, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.settings"

    invoke-static {v0, v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isRequiredOpApiCompatibleWithRom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v3, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 64
    return-void
.end method

.method public testisRequiredOpApiCompatibleWithRom2()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 67
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString12:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isRequiredOpApiCompatibleWithRom(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 68
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString13:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isRequiredOpApiCompatibleWithRom(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 69
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString14:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isRequiredOpApiCompatibleWithRom(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString15:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isRequiredOpApiCompatibleWithRom(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 71
    return-void
.end method

.method public testisUpgradable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString1:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isUpgradable(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 24
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString2:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isUpgradable(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 25
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString3:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isUpgradable(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 26
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString4:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isUpgradable(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 27
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString5:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isUpgradable(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 28
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString6:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isUpgradable(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 29
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString7:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isUpgradable(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 30
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString8:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isUpgradable(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 31
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString10:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isUpgradable(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v2, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 32
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->testString11:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->isUpgradable(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/oneplus/sdk/upgradecenter/utils/test/UpgradeCenterUtilsTest;->assertEquals(ZZ)V

    .line 33
    return-void
.end method
