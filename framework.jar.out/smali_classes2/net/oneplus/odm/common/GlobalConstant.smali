.class public Lnet/oneplus/odm/common/GlobalConstant;
.super Ljava/lang/Object;
.source "GlobalConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/odm/common/GlobalConstant$DB;,
        Lnet/oneplus/odm/common/GlobalConstant$Preference;
    }
.end annotation


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "DeviceManager"

.field public static final PAYLOAD_CATEGORY_APP:Ljava/lang/String; = "app"

.field public static final PAYLOAD_CATEGORY_CUSTOM_DATA:Ljava/lang/String; = "custom_data"

.field public static final PAYLOAD_CATEGORY_OS:Ljava/lang/String; = "os"

.field public static final PAYLOAD_CATEGORY_THIRD_PARTY_APP:Ljava/lang/String; = "third_party_app"

.field public static final RECEIVER_ACTION_ENABLE_ODM:Ljava/lang/String; = "#ODM_ENABLE_SERVICE#"

.field public static final RECEIVER_ACTION_LOCATION:Ljava/lang/String; = "#ODM_RECEIVE_LOCATE_JOB#"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method
