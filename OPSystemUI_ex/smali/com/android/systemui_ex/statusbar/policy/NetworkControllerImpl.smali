.class public Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui_ex/DemoMode;
.implements Lcom/android/systemui_ex/statusbar/policy/NetworkController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$4;,
        Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;,
        Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$WifiHandler;,
        Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field protected static mAppopsStrictEnabled:Z


# instance fields
.field private final mAccessPoints:Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;

.field mAirplaneIconId:I

.field protected mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field protected mBluetoothTetherIconId:I

.field protected mBluetoothTethered:Z

.field private mCarrierText:Ljava/lang/String;

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mCombinedSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected mConnected:Z

.field protected mConnectedNetworkType:I

.field protected mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field mDataActivity:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataDirectionIconId:I

.field mDataDirectionIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataDirectionOverlayIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataIconList:[I

.field mDataNetType:I

.field protected mDataServiceState:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeIconId:I

.field mDataTypeIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDemoDataTypeIconId:I

.field private mDemoInetCondition:I

.field private mDemoMobileActivityId:I

.field private mDemoMobileLevel:I

.field private mDemoMode:Z

.field private mDemoQSDataTypeIconId:I

.field private mDemoWifiActivityId:I

.field private mDemoWifiLevel:I

.field mEmergencyViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;",
            ">;"
        }
    .end annotation
.end field

.field protected mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field protected mInetCondition:I

.field protected mIsWimaxEnabled:Z

.field protected mLastAirplaneMode:Z

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field protected mLastConnectedNetworkType:I

.field mLastDataDirectionIconId:I

.field mLastDataDirectionOverlayIconId:I

.field mLastDataTypeIconId:I

.field protected mLastInetCondition:I

.field private mLastLocale:Ljava/util/Locale;

.field mLastMobileActivityIconId:I

.field mLastPhoneSignalIconId:I

.field mLastSignalLevel:I

.field mLastSimIconId:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field private mLocale:Ljava/util/Locale;

.field mMobileActivityIconId:I

.field private final mMobileDataController:Lcom/android/systemui_ex/statusbar/policy/MobileDataController;

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field mNoSim:Z

.field mNoSimIconId:I

.field mOriginalTelephonyPlmn:Ljava/lang/String;

.field mOriginalTelephonySpn:Ljava/lang/String;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:I

.field mPhoneSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPlmn:Ljava/lang/String;

.field mQSDataTypeIconId:I

.field mQSPhoneSignalIconId:I

.field mQSWifiIconId:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mShow4GforLTE:Z

.field mShowAtLeastThreeGees:Z

.field mShowPhoneRSSIForData:Z

.field mShowPlmn:Z

.field mShowRsrpSignalLevelforLTE:Z

.field mShowSpn:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSimOperatorCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field mSpn:Ljava/lang/String;

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field protected mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field protected mWimaxConnected:Z

.field protected mWimaxExtraState:I

.field protected mWimaxIconId:I

.field mWimaxIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected mWimaxIdle:Z

.field protected mWimaxSignal:I

.field protected mWimaxState:I

.field protected mWimaxSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "NetworkController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    .line 202
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAppopsStrictEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 223
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 80
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 81
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    .line 82
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 83
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataState:I

    .line 84
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    .line 87
    sget-object v3, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v3, v3, v5

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 109
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 110
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    .line 111
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowSpn:Z

    .line 112
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowPlmn:Z

    .line 113
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    .line 114
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShow4GforLTE:Z

    .line 115
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowRsrpSignalLevelforLTE:Z

    .line 117
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 131
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 132
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 133
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 134
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    .line 137
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 138
    const v3, 0x10806c6

    iput v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    .line 142
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    .line 143
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    .line 144
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 145
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    .line 146
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 147
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    .line 148
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    .line 149
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    .line 150
    iput v6, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    .line 154
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 155
    iput v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 157
    iput v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    .line 159
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    .line 160
    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    .line 163
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 164
    iput-boolean v6, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    .line 166
    iput-object v7, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 167
    iput-object v7, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconViews:Ljava/util/ArrayList;

    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconViews:Ljava/util/ArrayList;

    .line 175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconViews:Ljava/util/ArrayList;

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    .line 177
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconViews:Ljava/util/ArrayList;

    .line 178
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 181
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mEmergencyViews:Ljava/util/ArrayList;

    .line 182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    .line 183
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimOperatorCallbacks:Ljava/util/ArrayList;

    .line 189
    iput v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 190
    iput v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 191
    iput v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    .line 192
    iput v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    .line 193
    iput v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    .line 194
    iput v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 195
    iput v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    .line 196
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 200
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    .line 666
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;

    invoke-direct {v3, p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$3;-><init>(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 224
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 227
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->initAll(Landroid/content/Context;)V

    .line 228
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 230
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 232
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAppopsStrictEnabled:Z

    .line 234
    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 235
    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    .line 236
    const v3, 0x112005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    .line 238
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShow4GforLTE:Z

    .line 240
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowRsrpSignalLevelforLTE:Z

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 248
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    .line 250
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0041

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    .line 251
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0014

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    .line 256
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->createWifiHandler()V

    .line 262
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v3, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    .line 277
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v3, :cond_0

    .line 278
    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    :cond_0
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode()V

    .line 287
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 288
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;

    .line 289
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v3, p0}, Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;->setNetworkController(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 290
    new-instance v3, Lcom/android/systemui_ex/statusbar/policy/MobileDataController;

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/MobileDataController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui_ex/statusbar/policy/MobileDataController;

    .line 291
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui_ex/statusbar/policy/MobileDataController;

    new-instance v4, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$1;

    invoke-direct {v4, p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$1;-><init>(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/statusbar/policy/MobileDataController;->setCallback(Lcom/android/systemui_ex/statusbar/policy/MobileDataController$Callback;)V

    .line 297
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateIconSet()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v0

    return v0
.end method

.method private getRoamingSuffix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0026

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private hasService()Z
    .locals 4

    .prologue
    .line 860
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_2

    .line 865
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 874
    const/4 v0, 0x1

    .line 879
    .local v0, "retVal":Z
    :goto_0
    sget-boolean v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasService: mServiceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_0
    return v0

    .line 867
    .end local v0    # "retVal":Z
    :pswitch_0
    const/4 v0, 0x0

    .line 868
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 871
    .end local v0    # "retVal":Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 872
    .restart local v0    # "retVal":Z
    :goto_1
    goto :goto_0

    .line 871
    .end local v0    # "retVal":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 877
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 1181
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1182
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1192
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1186
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1187
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1188
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1189
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 1192
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private inetConditionForNetwork(I)I
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    const/4 v0, 0x1

    .line 954
    iget v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    if-ne v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQsTypeIconWide(I)Z
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 495
    const v0, 0x7f02010d

    if-eq v0, p1, :cond_0

    const v0, 0x7f0200fd

    if-eq v0, p1, :cond_0

    const v0, 0x7f020100

    if-eq v0, p1, :cond_0

    const v0, 0x7f020102

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 1

    .prologue
    .line 1005
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isCdmaEri()Z

    move-result v0

    .line 1008
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTypeIconWide(I)Z
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 490
    const v0, 0x7f020220

    if-eq v0, p1, :cond_0

    const v0, 0x7f020219

    if-eq v0, p1, :cond_0

    const v0, 0x7f02021a

    if-eq v0, p1, :cond_0

    const v0, 0x7f02021b

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshLocale()V
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 890
    return-void
.end method

.method private setCarrierText()V
    .locals 3

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateCarrierText()V

    .line 785
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 786
    .local v1, "v":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 789
    .end local v1    # "v":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private updateCarrierText()V
    .locals 3

    .prologue
    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "textResId":I
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 746
    const v0, 0x10403e4

    .line 777
    :goto_0
    if-eqz v0, :cond_0

    .line 778
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 780
    :cond_0
    return-void

    .line 748
    :cond_1
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 772
    const v0, 0x10403d0

    goto :goto_0

    .line 752
    :pswitch_0
    const v0, 0x10403d0

    .line 753
    goto :goto_0

    .line 755
    :pswitch_1
    const v0, 0x10403e2

    .line 756
    goto :goto_0

    .line 758
    :pswitch_2
    const v0, 0x10403e0

    .line 759
    goto :goto_0

    .line 762
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    goto :goto_0

    .line 765
    :pswitch_4
    const v0, 0x10403d4

    .line 767
    goto :goto_0

    .line 769
    :pswitch_5
    const v0, 0x10403de

    .line 770
    goto :goto_0

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1023
    const/4 v0, 0x0

    .line 1024
    .local v0, "iconId":I
    const/4 v1, 0x1

    .line 1025
    .local v1, "visible":Z
    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v2, :cond_1

    .line 1027
    const/4 v1, 0x0

    .line 1054
    :goto_0
    iput v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    .line 1055
    iput v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 1056
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    .line 1058
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1059
    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataIcon, mDataDirectionIconId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDataConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_0
    return-void

    .line 1028
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1030
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_4

    .line 1032
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    .line 1033
    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v2, v4, :cond_3

    .line 1034
    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getDataActivity(I)I

    move-result v0

    goto :goto_0

    .line 1036
    :cond_3
    const/4 v0, 0x0

    .line 1037
    const/4 v1, 0x0

    goto :goto_0

    .line 1040
    :cond_4
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getNoSimIcon()I

    move-result v0

    .line 1041
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    .line 1042
    const/4 v1, 0x0

    goto :goto_0

    .line 1046
    :cond_5
    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v2, v4, :cond_6

    .line 1047
    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getDataActivity(I)I

    move-result v0

    goto :goto_0

    .line 1049
    :cond_6
    const/4 v0, 0x0

    .line 1050
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final updateDataNetType()V
    .locals 4

    .prologue
    .line 959
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 960
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v1, :cond_2

    .line 962
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 963
    .local v0, "inetCondition":I
    const v1, 0x7f02021b

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 964
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 965
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0c009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 972
    .end local v0    # "inetCondition":I
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 973
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isCdmaEri()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 982
    :cond_0
    :goto_1
    sget-boolean v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 983
    const-string v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataNetType, mDataTypeIconId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mQSDataTypeIconId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    invoke-virtual {p0, v3}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mContentDescriptionDataType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_1
    return-void

    .line 968
    :cond_2
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getDataTypeIcon()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 969
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getDataTypeDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 970
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getQSDataTypeIcon()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    goto :goto_0

    .line 977
    :cond_3
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    goto :goto_1
.end method

.method private updateIconSet()V
    .locals 7

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v2

    .line 793
    .local v2, "voiceNetworkType":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getDataNetworkType()I

    move-result v1

    .line 795
    .local v1, "dataNetworkType":I
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 796
    const-string v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIconSet, voice network type is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data network type is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    if-nez v1, :cond_2

    move v0, v2

    .line 806
    .local v0, "chosenNetworkType":I
    :goto_0
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 807
    const-string v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " chosenNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hspaDataDistinguishable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hspapDistinguishable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showAtLeastThreeGees="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShow4GforLTE:Z

    iget-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    iget v6, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->updateDataType(IZZZI)V

    .line 815
    return-void

    .end local v0    # "chosenNetworkType":I
    :cond_2
    move v0, v1

    .line 802
    goto :goto_0
.end method

.method private final updateSimIcon()V
    .locals 3

    .prologue
    .line 1013
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateSimIcon simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    .line 1015
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getNoSimIcon()I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    .line 1019
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 1020
    return-void

    .line 1017
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength()V
    .locals 7

    .prologue
    const v6, 0x7f02010e

    const/4 v2, 0x0

    .line 893
    sget-boolean v3, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 894
    const-string v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-eqz v3, :cond_3

    .line 900
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getSignalNullIcon()I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 901
    iput v6, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 902
    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    iput v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 903
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getSignalStrengthDes(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 944
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 945
    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength, No signal level. mPhoneSignalIconId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDataSignalIconId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mQSPhoneSignalIconId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mContentDescriptionPhoneSignal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_2
    return-void

    .line 905
    :cond_3
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v3, :cond_5

    .line 907
    :cond_4
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getSignalNullIcon()I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 908
    iput v6, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 909
    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    iput v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 910
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getSignalStrengthDes(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_0

    .line 913
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v3, :cond_7

    .line 914
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, "iconLevel":I
    iput v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 915
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 916
    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength: mAlwaysShowCdmaRssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set to cdmaLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instead of level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_6
    :goto_1
    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isRoaming()Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getSignalStrengthIcon(IIZ)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 936
    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    iput v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 937
    sget-object v2, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 939
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->getSignalStrengthDes(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 940
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength: iconLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 922
    .end local v0    # "iconLevel":I
    :cond_7
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0    # "iconLevel":I
    iput v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 923
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowRsrpSignalLevelforLTE:Z

    if-eqz v3, :cond_6

    .line 924
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_6

    .line 926
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getAlternateLteLevel()I

    move-result v1

    .line 927
    .local v1, "level":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_8

    move v0, v2

    :goto_2
    iput v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 928
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength, data type is lte, level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 927
    goto :goto_2
.end method


# virtual methods
.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method

.method public addEmergencyLabelView(Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;)V
    .locals 1
    .param p1, "v"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mEmergencyViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 396
    return-void
.end method

.method public addSimOperatorCallback(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimOperatorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->notifySimOperatorCallback(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;)V

    .line 402
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 330
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$WifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$WifiHandler;-><init>(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;)V

    .line 331
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 332
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 333
    .local v1, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 334
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 336
    :cond_0
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 19
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1869
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-nez v4, :cond_1

    const-string v4, "enter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1870
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 1871
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    .line 1872
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoWifiActivityId:I

    .line 1873
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 1874
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    .line 1875
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    .line 1876
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    .line 1877
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMobileActivityId:I

    .line 1964
    :cond_0
    :goto_0
    return-void

    .line 1878
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v4, :cond_3

    const-string v4, "exit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1879
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 1880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 1881
    .local v1, "cluster":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_1

    .line 1883
    .end local v1    # "cluster":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto :goto_0

    .line 1884
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v4, :cond_0

    const-string v4, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1885
    const-string v4, "airplane"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1886
    .local v11, "airplane":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 1887
    const-string v4, "show"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1888
    .local v2, "show":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 1889
    .restart local v1    # "cluster":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
    const v4, 0x7f02020d

    invoke-interface {v1, v2, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_2

    .line 1892
    .end local v1    # "cluster":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v2    # "show":Z
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v4, "fully"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1893
    .local v13, "fully":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 1894
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 1896
    :cond_5
    const-string v4, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1897
    .local v18, "wifi":Ljava/lang/String;
    if-eqz v18, :cond_b

    .line 1898
    const-string v4, "show"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1899
    .restart local v2    # "show":Z
    const-string v4, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1900
    .local v16, "level":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 1901
    const-string v4, "null"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, -0x1

    :goto_4
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    .line 1904
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    if-gez v4, :cond_9

    const v3, 0x7f020420

    .line 1906
    .local v3, "iconId":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 1907
    .restart local v1    # "cluster":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoWifiActivityId:I

    const-string v5, "Demo"

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    goto :goto_6

    .line 1894
    .end local v1    # "cluster":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v2    # "show":Z
    .end local v3    # "iconId":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "level":Ljava/lang/String;
    .end local v18    # "wifi":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 1901
    .restart local v2    # "show":Z
    .restart local v16    # "level":Ljava/lang/String;
    .restart local v18    # "wifi":Ljava/lang/String;
    :cond_8
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/android/systemui_ex/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_4

    .line 1904
    :cond_9
    sget-object v4, Lcom/android/systemui_ex/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    aget v3, v4, v5

    goto :goto_5

    .line 1913
    .restart local v3    # "iconId":I
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 1915
    .end local v2    # "show":Z
    .end local v3    # "iconId":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "level":Ljava/lang/String;
    :cond_b
    const-string v4, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1916
    .local v17, "mobile":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 1917
    const-string v4, "show"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1918
    .restart local v2    # "show":Z
    const-string v4, "datatype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1919
    .local v12, "datatype":Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 1920
    const-string v4, "1x"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const v4, 0x7f020219

    :goto_7
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    .line 1930
    const-string v4, "1x"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const v4, 0x7f0200fd

    :goto_8
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    .line 1941
    :cond_c
    sget-object v15, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 1942
    .local v15, "icons":[[I
    const-string v4, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1943
    .restart local v16    # "level":Ljava/lang/String;
    if-eqz v16, :cond_d

    .line 1944
    const-string v4, "null"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, -0x1

    :goto_9
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    .line 1947
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    if-gez v4, :cond_1f

    const v3, 0x7f020402

    .line 1949
    .restart local v3    # "iconId":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 1950
    .restart local v1    # "cluster":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMobileActivityId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    const-string v6, "Demo"

    const-string v7, "Demo"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    const v9, 0x7f020221

    if-ne v8, v9, :cond_20

    const/4 v8, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isTypeIconWide(I)Z

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    invoke-interface/range {v1 .. v10}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;ZZI)V

    goto :goto_b

    .line 1920
    .end local v1    # "cluster":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v3    # "iconId":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "icons":[[I
    .end local v16    # "level":Ljava/lang/String;
    :cond_e
    const-string v4, "3g"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const v4, 0x7f02021a

    goto :goto_7

    :cond_f
    const-string v4, "4g"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x7f02021b

    goto/16 :goto_7

    :cond_10
    const-string v4, "e"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const v4, 0x7f02021c

    goto/16 :goto_7

    :cond_11
    const-string v4, "g"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const v4, 0x7f02021d

    goto/16 :goto_7

    :cond_12
    const-string v4, "h"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const v4, 0x7f02021e

    goto/16 :goto_7

    :cond_13
    const-string v4, "lte"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const v4, 0x7f020220

    goto/16 :goto_7

    :cond_14
    const-string v4, "roam"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const v4, 0x7f020221

    goto/16 :goto_7

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1930
    :cond_16
    const-string v4, "3g"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const v4, 0x7f020100

    goto/16 :goto_8

    :cond_17
    const-string v4, "4g"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const v4, 0x7f020102

    goto/16 :goto_8

    :cond_18
    const-string v4, "e"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const v4, 0x7f020104

    goto/16 :goto_8

    :cond_19
    const-string v4, "g"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const v4, 0x7f02010a

    goto/16 :goto_8

    :cond_1a
    const-string v4, "h"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const v4, 0x7f02010b

    goto/16 :goto_8

    :cond_1b
    const-string v4, "lte"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const v4, 0x7f02010d

    goto/16 :goto_8

    :cond_1c
    const-string v4, "roam"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const v4, 0x7f020110

    goto/16 :goto_8

    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 1944
    .restart local v15    # "icons":[[I
    .restart local v16    # "level":Ljava/lang/String;
    :cond_1e
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v15, v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_9

    .line 1947
    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    aget-object v4, v15, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    aget v3, v4, v5

    goto/16 :goto_a

    .line 1950
    .restart local v1    # "cluster":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .restart local v3    # "iconId":I
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_20
    const/4 v8, 0x0

    goto/16 :goto_c

    .line 1961
    .end local v1    # "cluster":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1716
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1717
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    const-string v0, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1723
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1724
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1725
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1726
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1727
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1728
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1729
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1730
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1731
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1732
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1733
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1734
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1735
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1736
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1737
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1738
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1739
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1740
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1741
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1743
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1744
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1745
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1746
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1747
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1748
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1749
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1750
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1751
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1752
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1753
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1754
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1755
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1756
    const-string v0, "  mQSPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1757
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1758
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1759
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1760
    const-string v0, "  mDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1761
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1762
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1763
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1765
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1766
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1767
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    const-string v0, "  mDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1769
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1770
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1771
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    const-string v0, "  mQSDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1773
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1774
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1775
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1777
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1778
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1779
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1780
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1781
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1782
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1783
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1784
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1785
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1786
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1787
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1788
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1790
    const-string v0, "  mQSWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1792
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1793
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1795
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 1796
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1797
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1798
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1799
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1800
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1803
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1804
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1807
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1808
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1809
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1811
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1812
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1813
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1815
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1816
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1817
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1818
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1819
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1820
    const-string v0, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1821
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1822
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1823
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1824
    const-string v0, "  mLastDataDirectionOverlayIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1825
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1826
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1827
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1828
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1829
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1830
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1831
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1832
    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1833
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1834
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1835
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1837
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1838
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1839
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1840
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1841
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1842
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    return-void

    .line 1717
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public getConnectedWifiLevel()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    return v0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 1703
    const/4 v0, 0x0

    .line 1705
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public getGsmSignalLevel()I
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_0

    .line 1710
    const/4 v0, 0x0

    .line 1712
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0
.end method

.method protected getLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "originalCarrier"    # Ljava/lang/String;

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x1070045

    const v3, 0x1070046

    invoke-static {v1, p1, v2, v3}, Landroid/util/NativeTextHelper;->getLocalString(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "localeCarrier":Ljava/lang/String;
    return-object v0
.end method

.method protected getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 1846
    if-eqz p1, :cond_0

    .line 1847
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1849
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1854
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 1850
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1851
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 1854
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 1696
    const/4 v0, 0x0

    .line 1698
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCdmaEri()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 990
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v3, :cond_2

    .line 992
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 993
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 994
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 995
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 1001
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyNetworkOperatorCallbacks(Ljava/lang/String;)V
    .locals 4
    .param p1, "operatorName"    # Ljava/lang/String;

    .prologue
    .line 416
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimOperatorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;

    .line 417
    .local v0, "cb":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getRoamingSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;->onSimStateChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v0    # "cb":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 421
    :cond_0
    return-void
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui_ex/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 21
    .param p1, "cb"    # Lcom/android/systemui_ex/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 547
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v1, :cond_5

    :cond_0
    const/16 v20, 0x1

    .line 548
    .local v20, "wifiEnabled":Z
    :goto_0
    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 550
    .local v8, "wifiDesc":Ljava/lang/String;
    :goto_1
    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    :cond_1
    const/4 v5, 0x1

    .line 553
    .local v5, "wifiIn":Z
    :goto_2
    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    :cond_2
    const/4 v6, 0x1

    .line 556
    .local v6, "wifiOut":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/systemui_ex/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 559
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    :cond_3
    const/4 v14, 0x1

    .line 561
    .local v14, "mobileIn":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    :cond_4
    const/4 v15, 0x1

    .line 563
    .local v15, "mobileOut":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 564
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isQsTypeIconWide(I)Z

    move-result v19

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v19}, Lcom/android/systemui_ex/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 582
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 583
    return-void

    .line 547
    .end local v5    # "wifiIn":Z
    .end local v6    # "wifiOut":Z
    .end local v8    # "wifiDesc":Ljava/lang/String;
    .end local v14    # "mobileIn":Z
    .end local v15    # "mobileOut":Z
    .end local v20    # "wifiEnabled":Z
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 548
    .restart local v20    # "wifiEnabled":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 550
    .restart local v8    # "wifiDesc":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 553
    .restart local v5    # "wifiIn":Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 559
    .restart local v6    # "wifiOut":Z
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 561
    .restart local v14    # "mobileIn":Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_5

    .line 568
    .restart local v15    # "mobileOut":Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v1, :cond_c

    .line 570
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isQsTypeIconWide(I)Z

    move-result v19

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v19}, Lcom/android/systemui_ex/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_6

    .line 576
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isQsTypeIconWide(I)Z

    move-result v19

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v19}, Lcom/android/systemui_ex/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_6
.end method

.method public notifySimOperatorCallback(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;)V
    .locals 4
    .param p1, "scb"    # Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;

    .prologue
    .line 405
    if-nez p1, :cond_0

    .line 406
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimOperatorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;

    .line 407
    .local v0, "cb":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getRoamingSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;->onSimStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    .end local v0    # "cb":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getRoamingSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;->onSimStateChanged(Ljava/lang/String;)V

    .line 412
    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v3, 0x1120098

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 591
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 595
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 596
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 654
    :cond_1
    :goto_0
    return-void

    .line 597
    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 598
    invoke-virtual {p0, p2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateSimState(Landroid/content/Intent;)V

    .line 599
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    .line 600
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->notifySimOperatorCallback(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;)V

    .line 601
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto :goto_0

    .line 602
    :cond_3
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 603
    const-string v1, "showSpn"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowSpn:Z

    .line 604
    const-string v1, "showPlmn"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowPlmn:Z

    .line 605
    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    .line 606
    const-string v1, "plmn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    .line 608
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mOriginalTelephonySpn:Ljava/lang/String;

    .line 609
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mOriginalTelephonyPlmn:Ljava/lang/String;

    .line 610
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 612
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowSpn:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 613
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mOriginalTelephonySpn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    .line 615
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowPlmn:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 616
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mOriginalTelephonyPlmn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    .line 619
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto :goto_0

    .line 621
    :cond_6
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 623
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateConnectivity(Landroid/content/Intent;)V

    .line 624
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 625
    :cond_8
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 627
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 629
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowSpn:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 630
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mOriginalTelephonySpn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    .line 632
    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowPlmn:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 633
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mOriginalTelephonyPlmn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    .line 636
    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 637
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 638
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 639
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->notifySimOperatorCallback(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SimOperatorCallback;)V

    goto/16 :goto_0

    .line 640
    :cond_b
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 641
    invoke-virtual {p0, v2, v5, v2, v5}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 643
    :cond_c
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 644
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 645
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode()V

    .line 646
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateSimIcon()V

    .line 647
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 648
    :cond_d
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 651
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateWimaxState(Landroid/content/Intent;)V

    .line 652
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 459
    iput p1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    .line 460
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;->onUserSwitched(I)V

    .line 463
    return-void
.end method

.method public refreshSignalCluster(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 11
    .param p1, "cluster"    # Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    const v7, 0x7f020221

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 500
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAppopsStrictEnabled:Z

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    :goto_1
    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 508
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_6

    .line 510
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_2
    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    if-ne v0, v7, :cond_5

    move v7, v1

    :goto_3
    iget v9, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 542
    :cond_2
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_0

    :cond_3
    move v0, v8

    .line 501
    goto :goto_1

    .line 510
    :cond_4
    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_2

    :cond_5
    move v7, v8

    goto :goto_3

    .line 522
    :cond_6
    iget-boolean v10, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_7

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_5
    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    if-ne v0, v7, :cond_8

    move v7, v1

    :goto_6
    iget v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isTypeIconWide(I)Z

    move-result v8

    iget v9, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move-object v0, p1

    move v1, v10

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 532
    sget-boolean v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 533
    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster - setMobileDataIndicators:  mHasMobileDataFeature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPhoneSignalIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDataSignalIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMobileActivityIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDataTypeIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNoSimIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 522
    :cond_7
    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_5

    :cond_8
    move v7, v8

    goto/16 :goto_6
.end method

.method refreshViews()V
    .locals 20

    .prologue
    .line 1288
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 1290
    .local v8, "context":Landroid/content/Context;
    const/4 v7, 0x0

    .line 1291
    .local v7, "combinedSignalIconId":I
    const/4 v5, 0x0

    .line 1292
    .local v5, "combinedActivityIconId":I
    const-string v6, ""

    .line 1293
    .local v6, "combinedLabel":Ljava/lang/String;
    const-string v16, ""

    .line 1294
    .local v16, "wifiLabel":Ljava/lang/String;
    const-string v14, ""

    .line 1296
    .local v14, "mobileLabel":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v9

    .line 1298
    .local v9, "emergencyOnly":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 1299
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1300
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1301
    const-string v14, ""

    .line 1336
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    .line 1338
    const v17, 0x7f0c00e5

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1339
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 1365
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 1366
    move-object/from16 v6, v16

    .line 1367
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1377
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c0042

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1379
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c00a1

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1384
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    const/4 v10, 0x1

    .line 1385
    .local v10, "ethernetConnected":Z
    :goto_3
    if-eqz v10, :cond_2

    .line 1386
    const v17, 0x7f0c00f4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1389
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v17

    if-nez v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v17

    if-nez v17, :cond_16

    .line 1394
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c00a2

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1396
    const v17, 0x7f02020d

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAirplaneIconId:I

    .line 1397
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1398
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1399
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    .line 1402
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 1404
    const-string v14, ""

    .line 1428
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 1429
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v13

    .line 1430
    .local v13, "inetCondition":I
    sget-boolean v17, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v17, :cond_5

    const-string v17, "NetworkController"

    const-string v18, "refreshViews: Data not connected!! Set no data type icon / Roaming"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1432
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1433
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->isRoaming()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1435
    sget-object v17, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v18, v0

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1439
    .end local v13    # "inetCondition":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    move/from16 v17, v0

    if-gez v17, :cond_19

    const v17, 0x7f020121

    :goto_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 1442
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    move/from16 v17, v0

    if-gez v17, :cond_1a

    const v17, 0x7f02010e

    :goto_6
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1444
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1447
    :cond_7
    sget-boolean v17, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v17, :cond_8

    .line 1448
    const-string v18, "NetworkController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "refreshViews connected={"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1b

    const-string v17, " wifi"

    :goto_7
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1c

    const-string v17, " data"

    :goto_8
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " } level="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v17, v0

    if-nez v17, :cond_1d

    const-string v17, "??"

    :goto_9
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " combinedSignalIconId=0x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " combinedActivityIconId=0x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mobileLabel="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " wifiLabel="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " emergencyOnly="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " combinedLabel="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mAirplaneMode="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mDataActivity="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mPhoneSignalIconId=0x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mQSPhoneSignalIconId=0x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mDataDirectionIconId=0x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mDataSignalIconId=0x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mDataTypeIconId=0x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mQSDataTypeIconId=0x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mNoSimIconId=0x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mWifiIconId=0x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mQSWifiIconId=0x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mWifiActivityIconId=0x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " mBluetoothTetherIconId=0x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 1500
    .local v3, "cb":Lcom/android/systemui_ex/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui_ex/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_a

    .line 1311
    .end local v3    # "cb":Lcom/android/systemui_ex/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    .end local v10    # "ethernetConnected":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 1312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 1327
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1328
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1330
    move-object v6, v14

    .line 1331
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    goto/16 :goto_0

    .line 1313
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    if-eqz v9, :cond_e

    .line 1314
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v17

    if-nez v17, :cond_c

    if-eqz v9, :cond_d

    .line 1316
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_b

    .line 1319
    :cond_d
    const-string v14, ""

    goto :goto_b

    .line 1322
    :cond_e
    const v17, 0x7f0c00e4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_b

    .line 1341
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1342
    sget-boolean v17, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v17, :cond_10

    .line 1343
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "xxxxXXXXxxxxXXXX"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1345
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    goto/16 :goto_1

    .line 1360
    :pswitch_0
    const v17, 0x7f020401

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1348
    :pswitch_1
    const v17, 0x7f0203ff

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1352
    :pswitch_2
    const v17, 0x7f020406

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1356
    :pswitch_3
    const v17, 0x7f020400

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1370
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 1371
    const-string v16, ""

    goto/16 :goto_2

    .line 1373
    :cond_12
    const v17, 0x7f0c00e4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 1384
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1406
    .restart local v10    # "ethernetConnected":Z
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    .line 1408
    const-string v16, ""

    .line 1413
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1414
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_4

    .line 1410
    :cond_15
    const v17, 0x7f0c00e4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1411
    move-object/from16 v6, v16

    goto :goto_c

    .line 1417
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    if-nez v10, :cond_4

    .line 1420
    const v17, 0x7f0c00e4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1422
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1424
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_e
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    goto/16 :goto_4

    .line 1422
    :cond_17
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    goto :goto_d

    .line 1424
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_e

    .line 1440
    :cond_19
    sget-object v17, Lcom/android/systemui_ex/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    move/from16 v18, v0

    aget v17, v17, v18

    goto/16 :goto_5

    .line 1442
    :cond_1a
    sget-object v17, Lcom/android/systemui_ex/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    move/from16 v18, v0

    aget v17, v17, v18

    goto/16 :goto_6

    .line 1448
    :cond_1b
    const-string v17, ""

    goto/16 :goto_7

    :cond_1c
    const-string v17, ""

    goto/16 :goto_8

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_9

    .line 1503
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v5, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastSimIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_20

    .line 1516
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_20

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 1517
    .local v4, "cluster":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_f

    .line 1521
    .end local v4    # "cluster":Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl$SignalCluster;
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_21

    .line 1522
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    .line 1525
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_22

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 1530
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_24

    .line 1531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1533
    .local v2, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_10
    if-ge v11, v2, :cond_24

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1535
    .local v15, "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_23

    .line 1536
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1533
    :goto_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 1538
    :cond_23
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1539
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 1545
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_25

    .line 1546
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    .line 1550
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_26

    .line 1551
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1553
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_12
    if-ge v11, v2, :cond_26

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1555
    .restart local v15    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1553
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 1560
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastSimIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_27

    .line 1561
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastSimIconId:I

    .line 1565
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_29

    .line 1566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1568
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_13
    if-ge v11, v2, :cond_29

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1570
    .restart local v15    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_28

    .line 1571
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1568
    :goto_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    .line 1573
    :cond_28
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1574
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 1580
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2a

    .line 1581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    .line 1584
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2b

    .line 1585
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    .line 1589
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2d

    .line 1590
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1592
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_15
    if-ge v11, v2, :cond_2d

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1594
    .restart local v15    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_2c

    .line 1595
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1592
    :goto_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 1597
    :cond_2c
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1598
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 1604
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v7, :cond_2e

    .line 1605
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1607
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_17
    if-ge v11, v2, :cond_2e

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1609
    .restart local v15    # "v":Landroid/widget/ImageView;
    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1607
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    .line 1615
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_30

    .line 1616
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1618
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_18
    if-ge v11, v2, :cond_30

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1620
    .restart local v15    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_2f

    .line 1621
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1618
    :goto_19
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 1623
    :cond_2f
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1624
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 1631
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v5, :cond_33

    .line 1632
    sget-boolean v17, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v17, :cond_31

    .line 1633
    const-string v17, "NetworkController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "changing data overlay icon id to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_31
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1638
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1a
    if-ge v11, v2, :cond_33

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1640
    .restart local v15    # "v":Landroid/widget/ImageView;
    if-nez v5, :cond_32

    .line 1641
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1638
    :goto_1b
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    .line 1643
    :cond_32
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1644
    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 1651
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_34

    .line 1652
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1654
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1c
    if-ge v11, v2, :cond_34

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1656
    .local v15, "v":Landroid/widget/TextView;
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    add-int/lit8 v11, v11, 0x1

    goto :goto_1c

    .line 1661
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/TextView;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1662
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1d
    if-ge v11, v2, :cond_36

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1664
    .restart local v15    # "v":Landroid/widget/TextView;
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1665
    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_35

    .line 1666
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1662
    :goto_1e
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d

    .line 1668
    :cond_35
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1e

    .line 1673
    .end local v15    # "v":Landroid/widget/TextView;
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1674
    const/4 v11, 0x0

    :goto_1f
    if-ge v11, v2, :cond_38

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1676
    .restart local v15    # "v":Landroid/widget/TextView;
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1677
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_37

    .line 1678
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1674
    :goto_20
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    .line 1680
    :cond_37
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_20

    .line 1685
    .end local v15    # "v":Landroid/widget/TextView;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mEmergencyViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1686
    const/4 v11, 0x0

    :goto_21
    if-ge v11, v2, :cond_39

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mEmergencyViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .line 1688
    .local v15, "v":Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;
    invoke-virtual {v15, v9}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setShowEmergencyCallsOnly(Z)V

    .line 1686
    add-int/lit8 v11, v11, 0x1

    goto :goto_21

    .line 1691
    .end local v15    # "v":Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;
    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->setCarrierText()V

    .line 1692
    return-void

    .line 1345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 340
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 341
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 347
    return-void
.end method

.method protected updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 884
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 886
    return-void

    :cond_0
    move v0, v1

    .line 884
    goto :goto_0
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1247
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1249
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1252
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 1253
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v3, :cond_1

    .line 1254
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 1255
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1261
    :goto_1
    const-string v3, "inetCondition"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1268
    .local v1, "connectionStatus":I
    const/16 v3, 0x32

    if-le v1, v3, :cond_2

    :goto_2
    iput v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    .line 1270
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    .line 1271
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 1277
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 1278
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 1279
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    .line 1280
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    .line 1281
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 1282
    return-void

    .end local v1    # "connectionStatus":I
    :cond_0
    move v3, v5

    .line 1252
    goto :goto_0

    .line 1257
    :cond_1
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 1258
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .restart local v1    # "connectionStatus":I
    :cond_2
    move v4, v5

    .line 1268
    goto :goto_2

    .line 1273
    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    goto :goto_3
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1067
    const-string v2, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkName showSpn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", spn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", showPlmn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", plmn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mServiceState is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v1, :cond_3

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1072
    .local v0, "str":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 1073
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 1078
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1079
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1084
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 1097
    :goto_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->notifyNetworkOperatorCallbacks(Ljava/lang/String;)V

    .line 1098
    return-void

    .line 1067
    .end local v0    # "str":Ljava/lang/StringBuilder;
    :cond_3
    const-string v1, "not null"

    goto :goto_0

    .line 1088
    .restart local v0    # "str":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1089
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_1

    .line 1092
    :cond_5
    const-string v1, "NetworkController"

    const-string v2, "use default PLMN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 818
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, "stateExtra":Ljava/lang/String;
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 820
    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimState, sim state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_0
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 824
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 850
    :goto_0
    sget-boolean v2, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimState: mSimState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateSimIcon()V

    .line 852
    return-void

    .line 826
    :cond_2
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 827
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 829
    :cond_3
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "IMSI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 832
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 834
    :cond_5
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 835
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 838
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 840
    :cond_6
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 841
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 844
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 847
    .end local v0    # "lockedReason":Ljava/lang/String;
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method protected updateWifiIcons()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1162
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 1163
    .local v0, "inetCondition":I
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v1, :cond_0

    .line 1164
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 1165
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 1166
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui_ex/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    .line 1178
    :goto_0
    return-void

    .line 1169
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    if-eqz v1, :cond_1

    .line 1170
    iput v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 1171
    iput v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 1176
    :goto_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0c007e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 1173
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_3

    const v1, 0x7f020420

    :goto_2
    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 1174
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_2

    const v2, 0x7f020121

    :cond_2
    iput v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1173
    goto :goto_2
.end method

.method protected updateWifiState(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1127
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1128
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1129
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    .line 1158
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 1159
    return-void

    :cond_1
    move v4, v5

    .line 1129
    goto :goto_0

    .line 1132
    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1133
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1135
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 1136
    .local v3, "wasConnected":Z
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 1138
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v4, :cond_6

    .line 1140
    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 1141
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_3

    .line 1142
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1144
    :cond_3
    if-eqz v1, :cond_5

    .line 1145
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_4
    move v4, v5

    .line 1136
    goto :goto_2

    .line 1147
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_5
    iput-object v7, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 1149
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v4, :cond_0

    .line 1150
    iput-object v7, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 1152
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "wasConnected":Z
    :cond_7
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1153
    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    .line 1154
    iget v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    sget v5, Lcom/android/systemui_ex/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    goto :goto_1
.end method

.method protected updateWimaxIcons()V
    .locals 4

    .prologue
    .line 1222
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_2

    .line 1223
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v1, :cond_1

    .line 1224
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 1225
    .local v0, "inetCondition":I
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    if-eqz v1, :cond_0

    .line 1226
    sget v1, Lcom/android/systemui_ex/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 1229
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui_ex/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    .line 1238
    .end local v0    # "inetCondition":I
    :goto_1
    return-void

    .line 1228
    .restart local v0    # "inetCondition":I
    :cond_0
    sget-object v1, Lcom/android/systemui_ex/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_0

    .line 1232
    .end local v0    # "inetCondition":I
    :cond_1
    sget v1, Lcom/android/systemui_ex/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 1233
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 1236
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_1
.end method

.method protected final updateWimaxState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1198
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "action":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 1200
    .local v1, "wasConnected":Z
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1201
    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1203
    .local v2, "wimaxStatus":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    .line 1217
    .end local v2    # "wimaxStatus":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 1218
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 1219
    return-void

    .restart local v2    # "wimaxStatus":I
    :cond_1
    move v3, v4

    .line 1203
    goto :goto_0

    .line 1205
    .end local v2    # "wimaxStatus":I
    :cond_2
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1206
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    goto :goto_1

    .line 1207
    :cond_3
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1208
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    .line 1210
    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    .line 1213
    iget v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 1215
    iget v5, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v5, v4

    .line 1213
    goto :goto_2

    :cond_5
    move v3, v4

    .line 1215
    goto :goto_3
.end method
