.class public Lnet/oneplus/odm/common/GlobalConstant$DB;
.super Ljava/lang/Object;
.source "GlobalConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/odm/common/GlobalConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DB"
.end annotation


# static fields
.field public static final DB_DEVICEINFO_PAYLOAD:Ljava/lang/String; = "OP_deviceinfo_payload"

.field public static final DB_DEVICEINFO_PAYLOAD_ID:Ljava/lang/String; = "OP_deviceinfo_payload_id"

.field public static final DB_DEVICEINFO_PAYLOAD_TIMESTAMP:Ljava/lang/String; = "OP_deviceinfo_payload_timestamp"

.field public static final DB_DEVICEINFO_PAYLOAD_UPLOAD_TABLE:Ljava/lang/String; = "OP_deviceinfo_payload_upload_table"

.field public static final DB_PAYLOAD:Ljava/lang/String; = "OP_payload"

.field public static final DB_PAYLOAD_CATEGORY:Ljava/lang/String; = "OP_payload_category"

.field public static final DB_PAYLOAD_ID:Ljava/lang/String; = "OP_payload_id"

.field public static final DB_PAYLOAD_PROVIDER_URI:Ljava/lang/String; = "net.oneplus.odm.provider.PayloadProvider"

.field public static final DB_PAYLOAD_TIMESTAMP:Ljava/lang/String; = "OP_payload_timestamp"

.field public static final DB_PAYLOAD_UPLOAD_TABLE:Ljava/lang/String; = "OP_payload_upload_table"

.field public static final DB_VERSION:I = 0x1


# instance fields
.field final synthetic this$0:Lnet/oneplus/odm/common/GlobalConstant;


# direct methods
.method public constructor <init>(Lnet/oneplus/odm/common/GlobalConstant;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/odm/common/GlobalConstant;

    .prologue
    .line 21
    iput-object p1, p0, Lnet/oneplus/odm/common/GlobalConstant$DB;->this$0:Lnet/oneplus/odm/common/GlobalConstant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
